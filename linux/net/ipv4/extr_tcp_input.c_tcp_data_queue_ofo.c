
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef void* u32 ;
struct TYPE_12__ {struct rb_node* rb_node; } ;
struct TYPE_9__ {int num_sacks; } ;
struct tcp_sock {struct sk_buff* ooo_last_skb; TYPE_4__ out_of_order_queue; TYPE_2__* selective_acks; TYPE_1__ rx_opt; int rcv_ooopack; scalar_t__ pred_flags; } ;
struct sock {int dummy; } ;
struct rb_node {struct rb_node* rb_right; struct rb_node* rb_left; } ;
struct sk_buff {struct rb_node rbnode; int truesize; } ;
struct TYPE_13__ {void* seq; void* end_seq; } ;
struct TYPE_11__ {int gso_segs; } ;
struct TYPE_10__ {void* end_seq; void* start_seq; } ;


 int LINUX_MIB_TCPOFODROP ;
 int LINUX_MIB_TCPOFOMERGE ;
 int LINUX_MIB_TCPOFOQUEUE ;
 int NET_INC_STATS (int ,int ) ;
 scalar_t__ RB_EMPTY_ROOT (TYPE_4__*) ;
 TYPE_7__* TCP_SKB_CB (struct sk_buff*) ;
 scalar_t__ after (void*,void*) ;
 scalar_t__ before (void*,void*) ;
 int inet_csk_schedule_ack (struct sock*) ;
 int kfree_skb_partial (struct sk_buff*,int) ;
 scalar_t__ max_t (int ,int,int ) ;
 int rb_erase (struct rb_node*,TYPE_4__*) ;
 int rb_insert_color (struct rb_node*,TYPE_4__*) ;
 int rb_link_node (struct rb_node*,struct rb_node*,struct rb_node**) ;
 int rb_replace_node (struct rb_node*,struct rb_node*,TYPE_4__*) ;
 struct sk_buff* rb_to_skb (struct rb_node*) ;
 int skb_condense (struct sk_buff*) ;
 struct sk_buff* skb_rb_next (struct sk_buff*) ;
 int skb_set_owner_r (struct sk_buff*,struct sock*) ;
 TYPE_3__* skb_shinfo (struct sk_buff*) ;
 int sock_net (struct sock*) ;
 int tcp_drop (struct sock*,struct sk_buff*) ;
 int tcp_dsack_extend (struct sock*,void*,void*) ;
 int tcp_dsack_set (struct sock*,void*,void*) ;
 int tcp_ecn_check_ce (struct sock*,struct sk_buff*) ;
 int tcp_grow_window (struct sock*,struct sk_buff*) ;
 scalar_t__ tcp_is_sack (struct tcp_sock*) ;
 scalar_t__ tcp_ooo_try_coalesce (struct sock*,struct sk_buff*,struct sk_buff*,int*) ;
 int tcp_sack_new_ofo_skb (struct sock*,void*,void*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 int tcp_try_rmem_schedule (struct sock*,struct sk_buff*,int ) ;
 int u16 ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void tcp_data_queue_ofo(struct sock *sk, struct sk_buff *skb)
{
 struct tcp_sock *tp = tcp_sk(sk);
 struct rb_node **p, *parent;
 struct sk_buff *skb1;
 u32 seq, end_seq;
 bool fragstolen;

 tcp_ecn_check_ce(sk, skb);

 if (unlikely(tcp_try_rmem_schedule(sk, skb, skb->truesize))) {
  NET_INC_STATS(sock_net(sk), LINUX_MIB_TCPOFODROP);
  tcp_drop(sk, skb);
  return;
 }


 tp->pred_flags = 0;
 inet_csk_schedule_ack(sk);

 tp->rcv_ooopack += max_t(u16, 1, skb_shinfo(skb)->gso_segs);
 NET_INC_STATS(sock_net(sk), LINUX_MIB_TCPOFOQUEUE);
 seq = TCP_SKB_CB(skb)->seq;
 end_seq = TCP_SKB_CB(skb)->end_seq;

 p = &tp->out_of_order_queue.rb_node;
 if (RB_EMPTY_ROOT(&tp->out_of_order_queue)) {

  if (tcp_is_sack(tp)) {
   tp->rx_opt.num_sacks = 1;
   tp->selective_acks[0].start_seq = seq;
   tp->selective_acks[0].end_seq = end_seq;
  }
  rb_link_node(&skb->rbnode, ((void*)0), p);
  rb_insert_color(&skb->rbnode, &tp->out_of_order_queue);
  tp->ooo_last_skb = skb;
  goto end;
 }




 if (tcp_ooo_try_coalesce(sk, tp->ooo_last_skb,
     skb, &fragstolen)) {
coalesce_done:
  tcp_grow_window(sk, skb);
  kfree_skb_partial(skb, fragstolen);
  skb = ((void*)0);
  goto add_sack;
 }

 if (!before(seq, TCP_SKB_CB(tp->ooo_last_skb)->end_seq)) {
  parent = &tp->ooo_last_skb->rbnode;
  p = &parent->rb_right;
  goto insert;
 }


 parent = ((void*)0);
 while (*p) {
  parent = *p;
  skb1 = rb_to_skb(parent);
  if (before(seq, TCP_SKB_CB(skb1)->seq)) {
   p = &parent->rb_left;
   continue;
  }
  if (before(seq, TCP_SKB_CB(skb1)->end_seq)) {
   if (!after(end_seq, TCP_SKB_CB(skb1)->end_seq)) {

    NET_INC_STATS(sock_net(sk),
           LINUX_MIB_TCPOFOMERGE);
    tcp_drop(sk, skb);
    skb = ((void*)0);
    tcp_dsack_set(sk, seq, end_seq);
    goto add_sack;
   }
   if (after(seq, TCP_SKB_CB(skb1)->seq)) {

    tcp_dsack_set(sk, seq, TCP_SKB_CB(skb1)->end_seq);
   } else {



    rb_replace_node(&skb1->rbnode, &skb->rbnode,
      &tp->out_of_order_queue);
    tcp_dsack_extend(sk,
       TCP_SKB_CB(skb1)->seq,
       TCP_SKB_CB(skb1)->end_seq);
    NET_INC_STATS(sock_net(sk),
           LINUX_MIB_TCPOFOMERGE);
    tcp_drop(sk, skb1);
    goto merge_right;
   }
  } else if (tcp_ooo_try_coalesce(sk, skb1,
      skb, &fragstolen)) {
   goto coalesce_done;
  }
  p = &parent->rb_right;
 }
insert:

 rb_link_node(&skb->rbnode, parent, p);
 rb_insert_color(&skb->rbnode, &tp->out_of_order_queue);

merge_right:

 while ((skb1 = skb_rb_next(skb)) != ((void*)0)) {
  if (!after(end_seq, TCP_SKB_CB(skb1)->seq))
   break;
  if (before(end_seq, TCP_SKB_CB(skb1)->end_seq)) {
   tcp_dsack_extend(sk, TCP_SKB_CB(skb1)->seq,
      end_seq);
   break;
  }
  rb_erase(&skb1->rbnode, &tp->out_of_order_queue);
  tcp_dsack_extend(sk, TCP_SKB_CB(skb1)->seq,
     TCP_SKB_CB(skb1)->end_seq);
  NET_INC_STATS(sock_net(sk), LINUX_MIB_TCPOFOMERGE);
  tcp_drop(sk, skb1);
 }

 if (!skb1)
  tp->ooo_last_skb = skb;

add_sack:
 if (tcp_is_sack(tp))
  tcp_sack_new_ofo_skb(sk, seq, end_seq);
end:
 if (skb) {
  tcp_grow_window(sk, skb);
  skb_condense(skb);
  skb_set_owner_r(skb, sk);
 }
}
