
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct ncsi_request {int enabled; scalar_t__ flags; scalar_t__ cmd; scalar_t__ rsp; struct ncsi_dev_priv* ndp; } ;
struct ncsi_package {int dummy; } ;
struct ncsi_dev_priv {int lock; } ;
struct TYPE_3__ {int channel; } ;
struct TYPE_4__ {TYPE_1__ common; } ;
struct ncsi_cmd_pkt {TYPE_2__ cmd; } ;
struct ncsi_channel {int dummy; } ;


 scalar_t__ NCSI_REQ_FLAG_NETLINK_DRIVEN ;
 struct ncsi_request* from_timer (int ,struct timer_list*,int ) ;
 int ncsi_find_package_and_channel (struct ncsi_dev_priv*,int ,struct ncsi_package**,struct ncsi_channel**) ;
 int ncsi_free_request (struct ncsi_request*) ;
 int ncsi_send_netlink_timeout (struct ncsi_request*,struct ncsi_package*,struct ncsi_channel*) ;
 struct ncsi_request* nr ;
 scalar_t__ skb_network_header (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int timer ;

__attribute__((used)) static void ncsi_request_timeout(struct timer_list *t)
{
 struct ncsi_request *nr = from_timer(nr, t, timer);
 struct ncsi_dev_priv *ndp = nr->ndp;
 struct ncsi_cmd_pkt *cmd;
 struct ncsi_package *np;
 struct ncsi_channel *nc;
 unsigned long flags;




 spin_lock_irqsave(&ndp->lock, flags);
 nr->enabled = 0;
 if (nr->rsp || !nr->cmd) {
  spin_unlock_irqrestore(&ndp->lock, flags);
  return;
 }
 spin_unlock_irqrestore(&ndp->lock, flags);

 if (nr->flags == NCSI_REQ_FLAG_NETLINK_DRIVEN) {
  if (nr->cmd) {

   cmd = (struct ncsi_cmd_pkt *)
         skb_network_header(nr->cmd);
   ncsi_find_package_and_channel(ndp,
            cmd->cmd.common.channel,
            &np, &nc);
   ncsi_send_netlink_timeout(nr, np, nc);
  }
 }


 ncsi_free_request(nr);
}
