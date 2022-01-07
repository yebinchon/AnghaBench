
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct packet_type {int dummy; } ;
struct net_device {int dummy; } ;
struct ncsi_rsp_handler {scalar_t__ type; int (* handler ) (struct ncsi_request*) ;int payload; } ;
struct ncsi_request {scalar_t__ flags; int nlhdr; int snd_portid; int snd_seq; int enabled; struct sk_buff* rsp; int used; } ;
struct ncsi_pkt_hdr {scalar_t__ type; size_t id; int length; } ;
struct TYPE_2__ {int dev; } ;
struct ncsi_dev_priv {TYPE_1__ ndev; int lock; struct ncsi_request* requests; } ;
struct ncsi_dev {int dev; } ;


 int ARRAY_SIZE (struct ncsi_rsp_handler*) ;
 int ENODEV ;
 int ENOENT ;
 int EPERM ;
 scalar_t__ NCSI_PKT_AEN ;
 scalar_t__ NCSI_REQ_FLAG_NETLINK_DRIVEN ;
 struct ncsi_dev_priv* TO_NCSI_DEV_PRIV (struct ncsi_dev*) ;
 int ncsi_aen_handler (struct ncsi_dev_priv*,struct sk_buff*) ;
 struct ncsi_dev* ncsi_find_dev (struct net_device*) ;
 int ncsi_free_request (struct ncsi_request*) ;
 int ncsi_rsp_handler_netlink (struct ncsi_request*) ;
 struct ncsi_rsp_handler* ncsi_rsp_handlers ;
 int ncsi_send_netlink_err (int ,int ,int ,int *,int) ;
 int ncsi_validate_rsp_pkt (struct ncsi_request*,int) ;
 int netdev_err (int ,char*,scalar_t__,...) ;
 int netdev_warn (int ,char*,scalar_t__) ;
 int ntohs (int ) ;
 scalar_t__ skb_network_header (struct sk_buff*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct ncsi_request*) ;

int ncsi_rcv_rsp(struct sk_buff *skb, struct net_device *dev,
   struct packet_type *pt, struct net_device *orig_dev)
{
 struct ncsi_rsp_handler *nrh = ((void*)0);
 struct ncsi_dev *nd;
 struct ncsi_dev_priv *ndp;
 struct ncsi_request *nr;
 struct ncsi_pkt_hdr *hdr;
 unsigned long flags;
 int payload, i, ret;


 nd = ncsi_find_dev(dev);
 ndp = nd ? TO_NCSI_DEV_PRIV(nd) : ((void*)0);
 if (!ndp)
  return -ENODEV;


 hdr = (struct ncsi_pkt_hdr *)skb_network_header(skb);
 if (hdr->type == NCSI_PKT_AEN)
  return ncsi_aen_handler(ndp, skb);


 for (i = 0; i < ARRAY_SIZE(ncsi_rsp_handlers); i++) {
  if (ncsi_rsp_handlers[i].type == hdr->type) {
   if (ncsi_rsp_handlers[i].handler)
    nrh = &ncsi_rsp_handlers[i];
   else
    nrh = ((void*)0);

   break;
  }
 }

 if (!nrh) {
  netdev_err(nd->dev, "Received unrecognized packet (0x%x)\n",
      hdr->type);
  return -ENOENT;
 }


 spin_lock_irqsave(&ndp->lock, flags);
 nr = &ndp->requests[hdr->id];
 if (!nr->used) {
  spin_unlock_irqrestore(&ndp->lock, flags);
  return -ENODEV;
 }

 nr->rsp = skb;
 if (!nr->enabled) {
  spin_unlock_irqrestore(&ndp->lock, flags);
  ret = -ENOENT;
  goto out;
 }


 spin_unlock_irqrestore(&ndp->lock, flags);
 payload = nrh->payload;
 if (payload < 0)
  payload = ntohs(hdr->length);
 ret = ncsi_validate_rsp_pkt(nr, payload);
 if (ret) {
  netdev_warn(ndp->ndev.dev,
       "NCSI: 'bad' packet ignored for type 0x%x\n",
       hdr->type);

  if (nr->flags == NCSI_REQ_FLAG_NETLINK_DRIVEN) {
   if (ret == -EPERM)
    goto out_netlink;
   else
    ncsi_send_netlink_err(ndp->ndev.dev,
            nr->snd_seq,
            nr->snd_portid,
            &nr->nlhdr,
            ret);
  }
  goto out;
 }


 ret = nrh->handler(nr);
 if (ret)
  netdev_err(ndp->ndev.dev,
      "NCSI: Handler for packet type 0x%x returned %d\n",
      hdr->type, ret);

out_netlink:
 if (nr->flags == NCSI_REQ_FLAG_NETLINK_DRIVEN) {
  ret = ncsi_rsp_handler_netlink(nr);
  if (ret) {
   netdev_err(ndp->ndev.dev,
       "NCSI: Netlink handler for packet type 0x%x returned %d\n",
       hdr->type, ret);
  }
 }

out:
 ncsi_free_request(nr);
 return ret;
}
