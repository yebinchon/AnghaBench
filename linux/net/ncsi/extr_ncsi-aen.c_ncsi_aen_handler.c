
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {int dev; } ;
struct ncsi_dev_priv {TYPE_1__ ndev; } ;
struct ncsi_aen_pkt_hdr {scalar_t__ type; } ;
struct ncsi_aen_handler {scalar_t__ type; int (* handler ) (struct ncsi_dev_priv*,struct ncsi_aen_pkt_hdr*) ;int payload; } ;


 int ARRAY_SIZE (struct ncsi_aen_handler*) ;
 int ENOENT ;
 int consume_skb (struct sk_buff*) ;
 struct ncsi_aen_handler* ncsi_aen_handlers ;
 int ncsi_validate_aen_pkt (struct ncsi_aen_pkt_hdr*,int ) ;
 int netdev_err (int ,char*,scalar_t__,int) ;
 int netdev_warn (int ,char*,scalar_t__) ;
 scalar_t__ skb_network_header (struct sk_buff*) ;
 int stub1 (struct ncsi_dev_priv*,struct ncsi_aen_pkt_hdr*) ;

int ncsi_aen_handler(struct ncsi_dev_priv *ndp, struct sk_buff *skb)
{
 struct ncsi_aen_pkt_hdr *h;
 struct ncsi_aen_handler *nah = ((void*)0);
 int i, ret;


 h = (struct ncsi_aen_pkt_hdr *)skb_network_header(skb);
 for (i = 0; i < ARRAY_SIZE(ncsi_aen_handlers); i++) {
  if (ncsi_aen_handlers[i].type == h->type) {
   nah = &ncsi_aen_handlers[i];
   break;
  }
 }

 if (!nah) {
  netdev_warn(ndp->ndev.dev, "Invalid AEN (0x%x) received\n",
       h->type);
  return -ENOENT;
 }

 ret = ncsi_validate_aen_pkt(h, nah->payload);
 if (ret) {
  netdev_warn(ndp->ndev.dev,
       "NCSI: 'bad' packet ignored for AEN type 0x%x\n",
       h->type);
  goto out;
 }

 ret = nah->handler(ndp, h);
 if (ret)
  netdev_err(ndp->ndev.dev,
      "NCSI: Handler for AEN type 0x%x returned %d\n",
      h->type, ret);
out:
 consume_skb(skb);
 return ret;
}
