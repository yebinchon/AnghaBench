
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sockaddr_can {int can_ifindex; int can_family; } ;
struct sock {int dummy; } ;
struct sk_buff {scalar_t__ len; struct sock* sk; TYPE_1__* dev; scalar_t__ cb; } ;
struct raw_sock {int count; scalar_t__ join_filters; TYPE_3__* uniq; int fd_frames; int recv_own_msgs; } ;
struct TYPE_8__ {scalar_t__ skbcnt; } ;
struct TYPE_7__ {int join_rx_count; } ;
struct TYPE_6__ {scalar_t__ skbcnt; int join_rx_count; struct sk_buff* skb; } ;
struct TYPE_5__ {int ifindex; } ;


 int AF_CAN ;
 scalar_t__ CAN_MTU ;
 int GFP_ATOMIC ;
 unsigned int MSG_CONFIRM ;
 unsigned int MSG_DONTROUTE ;
 TYPE_4__* can_skb_prv (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int memset (struct sockaddr_can*,int ,int) ;
 unsigned int* raw_flags (struct sk_buff*) ;
 struct raw_sock* raw_sk (struct sock*) ;
 struct sk_buff* skb_clone (struct sk_buff*,int ) ;
 scalar_t__ sock_queue_rcv_skb (struct sock*,struct sk_buff*) ;
 int sock_skb_cb_check_size (int) ;
 int this_cpu_inc (int ) ;
 TYPE_2__* this_cpu_ptr (TYPE_3__*) ;

__attribute__((used)) static void raw_rcv(struct sk_buff *oskb, void *data)
{
 struct sock *sk = (struct sock *)data;
 struct raw_sock *ro = raw_sk(sk);
 struct sockaddr_can *addr;
 struct sk_buff *skb;
 unsigned int *pflags;


 if (!ro->recv_own_msgs && oskb->sk == sk)
  return;


 if (!ro->fd_frames && oskb->len != CAN_MTU)
  return;


 if (this_cpu_ptr(ro->uniq)->skb == oskb &&
     this_cpu_ptr(ro->uniq)->skbcnt == can_skb_prv(oskb)->skbcnt) {
  if (ro->join_filters) {
   this_cpu_inc(ro->uniq->join_rx_count);

   if (this_cpu_ptr(ro->uniq)->join_rx_count < ro->count)
    return;
  } else {
   return;
  }
 } else {
  this_cpu_ptr(ro->uniq)->skb = oskb;
  this_cpu_ptr(ro->uniq)->skbcnt = can_skb_prv(oskb)->skbcnt;
  this_cpu_ptr(ro->uniq)->join_rx_count = 1;

  if (ro->join_filters && ro->count > 1)
   return;
 }


 skb = skb_clone(oskb, GFP_ATOMIC);
 if (!skb)
  return;







 sock_skb_cb_check_size(sizeof(struct sockaddr_can));
 addr = (struct sockaddr_can *)skb->cb;
 memset(addr, 0, sizeof(*addr));
 addr->can_family = AF_CAN;
 addr->can_ifindex = skb->dev->ifindex;


 pflags = raw_flags(skb);
 *pflags = 0;
 if (oskb->sk)
  *pflags |= MSG_DONTROUTE;
 if (oskb->sk == sk)
  *pflags |= MSG_CONFIRM;

 if (sock_queue_rcv_skb(sk, skb) < 0)
  kfree_skb(skb);
}
