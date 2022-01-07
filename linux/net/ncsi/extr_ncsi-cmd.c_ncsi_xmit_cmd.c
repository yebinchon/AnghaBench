
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ncsi_request {int enabled; int cmd; int timer; int id; int nlhdr; int snd_portid; int snd_seq; } ;
struct ncsi_cmd_handler {unsigned char type; int (* handler ) (int ,struct ncsi_cmd_arg*) ;scalar_t__ payload; } ;
struct ncsi_cmd_arg {scalar_t__ req_flags; unsigned char type; scalar_t__ payload; int id; TYPE_3__* info; TYPE_2__* ndp; } ;
struct ethhdr {int h_source; int h_dest; int h_proto; } ;
struct TYPE_6__ {int * nlhdr; int snd_portid; int snd_seq; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_5__ {TYPE_1__ ndev; } ;


 int ARRAY_SIZE (struct ncsi_cmd_handler*) ;
 int ENOENT ;
 int ENOMEM ;
 int ETH_P_NCSI ;
 int HZ ;
 unsigned char NCSI_PKT_CMD_OEM ;
 scalar_t__ NCSI_REQ_FLAG_NETLINK_DRIVEN ;
 int dev_queue_xmit (int ) ;
 int eth_broadcast_addr (int ) ;
 int htons (int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 struct ncsi_request* ncsi_alloc_command (struct ncsi_cmd_arg*) ;
 struct ncsi_cmd_handler* ncsi_cmd_handlers ;
 int ncsi_free_request (struct ncsi_request*) ;
 int netdev_err (int ,char*,unsigned char) ;
 int skb_get (int ) ;
 struct ethhdr* skb_push (int ,int) ;
 int stub1 (int ,struct ncsi_cmd_arg*) ;

int ncsi_xmit_cmd(struct ncsi_cmd_arg *nca)
{
 struct ncsi_cmd_handler *nch = ((void*)0);
 struct ncsi_request *nr;
 unsigned char type;
 struct ethhdr *eh;
 int i, ret;


 if (nca->req_flags == NCSI_REQ_FLAG_NETLINK_DRIVEN)
  type = NCSI_PKT_CMD_OEM;
 else
  type = nca->type;


 for (i = 0; i < ARRAY_SIZE(ncsi_cmd_handlers); i++) {
  if (ncsi_cmd_handlers[i].type == type) {
   if (ncsi_cmd_handlers[i].handler)
    nch = &ncsi_cmd_handlers[i];
   else
    nch = ((void*)0);

   break;
  }
 }

 if (!nch) {
  netdev_err(nca->ndp->ndev.dev,
      "Cannot send packet with type 0x%02x\n", nca->type);
  return -ENOENT;
 }






 if (nch->payload >= 0)
  nca->payload = nch->payload;
 nr = ncsi_alloc_command(nca);
 if (!nr)
  return -ENOMEM;


 if (nca->req_flags == NCSI_REQ_FLAG_NETLINK_DRIVEN) {
  nr->snd_seq = nca->info->snd_seq;
  nr->snd_portid = nca->info->snd_portid;
  nr->nlhdr = *nca->info->nlhdr;
 }


 nca->id = nr->id;
 ret = nch->handler(nr->cmd, nca);
 if (ret) {
  ncsi_free_request(nr);
  return ret;
 }


 eh = skb_push(nr->cmd, sizeof(*eh));
 eh->h_proto = htons(ETH_P_NCSI);
 eth_broadcast_addr(eh->h_dest);
 eth_broadcast_addr(eh->h_source);





 nr->enabled = 1;
 mod_timer(&nr->timer, jiffies + 1 * HZ);


 skb_get(nr->cmd);
 ret = dev_queue_xmit(nr->cmd);
 if (ret < 0) {
  ncsi_free_request(nr);
  return ret;
 }

 return 0;
}
