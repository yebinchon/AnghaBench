
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {scalar_t__ len; int pkt_type; void* ip_summed; int sk; TYPE_3__* dev; void* protocol; scalar_t__ data; } ;
struct canfd_frame {scalar_t__ len; } ;
struct can_pkg_stats {int tx_frames_delta; int tx_frames; } ;
struct TYPE_6__ {scalar_t__ mtu; scalar_t__ type; int flags; } ;
struct TYPE_4__ {struct can_pkg_stats* pkg_stats; } ;
struct TYPE_5__ {TYPE_1__ can; } ;


 scalar_t__ ARPHRD_CAN ;
 scalar_t__ CANFD_MAX_DLEN ;
 scalar_t__ CANFD_MTU ;
 scalar_t__ CAN_MAX_DLEN ;
 scalar_t__ CAN_MTU ;
 void* CHECKSUM_UNNECESSARY ;
 int EINVAL ;
 int EMSGSIZE ;
 int ENETDOWN ;
 int ENOMEM ;
 int EPERM ;
 int ETH_P_CAN ;
 int ETH_P_CANFD ;
 int GFP_ATOMIC ;
 int IFF_ECHO ;
 int IFF_UP ;
 int PACKET_BROADCAST ;
 int PACKET_HOST ;
 int PACKET_LOOPBACK ;
 int can_skb_set_owner (struct sk_buff*,int ) ;
 TYPE_2__* dev_net (TYPE_3__*) ;
 int dev_queue_xmit (struct sk_buff*) ;
 void* htons (int ) ;
 int kfree_skb (struct sk_buff*) ;
 int net_xmit_errno (int) ;
 int netif_rx_ni (struct sk_buff*) ;
 struct sk_buff* skb_clone (struct sk_buff*,int ) ;
 int skb_reset_mac_header (struct sk_buff*) ;
 int skb_reset_network_header (struct sk_buff*) ;
 int skb_reset_transport_header (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

int can_send(struct sk_buff *skb, int loop)
{
 struct sk_buff *newskb = ((void*)0);
 struct canfd_frame *cfd = (struct canfd_frame *)skb->data;
 struct can_pkg_stats *pkg_stats = dev_net(skb->dev)->can.pkg_stats;
 int err = -EINVAL;

 if (skb->len == CAN_MTU) {
  skb->protocol = htons(ETH_P_CAN);
  if (unlikely(cfd->len > CAN_MAX_DLEN))
   goto inval_skb;
 } else if (skb->len == CANFD_MTU) {
  skb->protocol = htons(ETH_P_CANFD);
  if (unlikely(cfd->len > CANFD_MAX_DLEN))
   goto inval_skb;
 } else {
  goto inval_skb;
 }





 if (unlikely(skb->len > skb->dev->mtu && cfd->len > CAN_MAX_DLEN)) {
  err = -EMSGSIZE;
  goto inval_skb;
 }

 if (unlikely(skb->dev->type != ARPHRD_CAN)) {
  err = -EPERM;
  goto inval_skb;
 }

 if (unlikely(!(skb->dev->flags & IFF_UP))) {
  err = -ENETDOWN;
  goto inval_skb;
 }

 skb->ip_summed = CHECKSUM_UNNECESSARY;

 skb_reset_mac_header(skb);
 skb_reset_network_header(skb);
 skb_reset_transport_header(skb);

 if (loop) {



  skb->pkt_type = PACKET_LOOPBACK;
  if (!(skb->dev->flags & IFF_ECHO)) {



   newskb = skb_clone(skb, GFP_ATOMIC);
   if (!newskb) {
    kfree_skb(skb);
    return -ENOMEM;
   }

   can_skb_set_owner(newskb, skb->sk);
   newskb->ip_summed = CHECKSUM_UNNECESSARY;
   newskb->pkt_type = PACKET_BROADCAST;
  }
 } else {

  skb->pkt_type = PACKET_HOST;
 }


 err = dev_queue_xmit(skb);
 if (err > 0)
  err = net_xmit_errno(err);

 if (err) {
  kfree_skb(newskb);
  return err;
 }

 if (newskb)
  netif_rx_ni(newskb);


 pkg_stats->tx_frames++;
 pkg_stats->tx_frames_delta++;

 return 0;

inval_skb:
 kfree_skb(skb);
 return err;
}
