
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ len; scalar_t__ data; } ;
struct packet_type {int dummy; } ;
struct net_device {scalar_t__ type; } ;
struct canfd_frame {scalar_t__ len; } ;


 scalar_t__ ARPHRD_CAN ;
 scalar_t__ CAN_MAX_DLEN ;
 scalar_t__ CAN_MTU ;
 int NET_RX_DROP ;
 int NET_RX_SUCCESS ;
 int can_receive (struct sk_buff*,struct net_device*) ;
 int kfree_skb (struct sk_buff*) ;
 int pr_warn_once (char*,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int can_rcv(struct sk_buff *skb, struct net_device *dev,
     struct packet_type *pt, struct net_device *orig_dev)
{
 struct canfd_frame *cfd = (struct canfd_frame *)skb->data;

 if (unlikely(dev->type != ARPHRD_CAN || skb->len != CAN_MTU ||
       cfd->len > CAN_MAX_DLEN)) {
  pr_warn_once("PF_CAN: dropped non conform CAN skbuf: dev type %d, len %d, datalen %d\n",
        dev->type, skb->len, cfd->len);
  kfree_skb(skb);
  return NET_RX_DROP;
 }

 can_receive(skb, dev);
 return NET_RX_SUCCESS;
}
