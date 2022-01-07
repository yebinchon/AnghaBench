
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_can {int can_ifindex; int can_family; } ;
struct sock {int dummy; } ;
struct sk_buff {scalar_t__ cb; int tstamp; } ;
struct canfd_frame {unsigned int nframes; int flags; } ;
struct bcm_sock {int dropped_usr_msgs; } ;
struct bcm_op {unsigned int cfsiz; int rx_ifindex; int rx_stamp; struct sock* sk; } ;
struct bcm_msg_head {unsigned int nframes; int flags; } ;


 int AF_CAN ;
 int BCM_CAN_FLAGS_MASK ;
 struct sk_buff* alloc_skb (int,int ) ;
 struct bcm_sock* bcm_sk (struct sock*) ;
 int gfp_any () ;
 int kfree_skb (struct sk_buff*) ;
 int memset (struct sockaddr_can*,int ,int) ;
 int skb_put_data (struct sk_buff*,struct canfd_frame*,unsigned int) ;
 scalar_t__ skb_tail_pointer (struct sk_buff*) ;
 int sock_queue_rcv_skb (struct sock*,struct sk_buff*) ;
 int sock_skb_cb_check_size (int) ;

__attribute__((used)) static void bcm_send_to_user(struct bcm_op *op, struct bcm_msg_head *head,
        struct canfd_frame *frames, int has_timestamp)
{
 struct sk_buff *skb;
 struct canfd_frame *firstframe;
 struct sockaddr_can *addr;
 struct sock *sk = op->sk;
 unsigned int datalen = head->nframes * op->cfsiz;
 int err;

 skb = alloc_skb(sizeof(*head) + datalen, gfp_any());
 if (!skb)
  return;

 skb_put_data(skb, head, sizeof(*head));

 if (head->nframes) {

  firstframe = (struct canfd_frame *)skb_tail_pointer(skb);

  skb_put_data(skb, frames, datalen);







  if (head->nframes == 1)
   firstframe->flags &= BCM_CAN_FLAGS_MASK;
 }

 if (has_timestamp) {

  skb->tstamp = op->rx_stamp;
 }
 sock_skb_cb_check_size(sizeof(struct sockaddr_can));
 addr = (struct sockaddr_can *)skb->cb;
 memset(addr, 0, sizeof(*addr));
 addr->can_family = AF_CAN;
 addr->can_ifindex = op->rx_ifindex;

 err = sock_queue_rcv_skb(sk, skb);
 if (err < 0) {
  struct bcm_sock *bo = bcm_sk(sk);

  kfree_skb(skb);

  bo->dropped_usr_msgs++;
 }
}
