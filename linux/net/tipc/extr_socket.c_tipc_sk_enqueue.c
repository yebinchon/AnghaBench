
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int len; } ;
struct sock {int sk_drops; TYPE_1__ sk_backlog; } ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
typedef int atomic_t ;
struct TYPE_4__ {int dupl_rcvcnt; } ;


 int TIPC_DUMP_ALL ;
 int TIPC_ERR_OVERLOAD ;
 int __skb_queue_tail (struct sk_buff_head*,struct sk_buff*) ;
 int atomic_inc (int *) ;
 unsigned int atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 int jiffies ;
 scalar_t__ likely (int) ;
 unsigned int rcvbuf_limit (struct sock*,struct sk_buff*) ;
 int sk_add_backlog (struct sock*,struct sk_buff*,unsigned int) ;
 scalar_t__ skb_queue_len (struct sk_buff_head*) ;
 int sock_net (struct sock*) ;
 int sock_owned_by_user (struct sock*) ;
 int time_after_eq (int,unsigned long) ;
 scalar_t__ tipc_msg_reverse (int ,struct sk_buff**,int ) ;
 int tipc_own_addr (int ) ;
 TYPE_2__* tipc_sk (struct sock*) ;
 int tipc_sk_filter_rcv (struct sock*,struct sk_buff*,struct sk_buff_head*) ;
 struct sk_buff* tipc_skb_dequeue (struct sk_buff_head*,int ) ;
 int trace_tipc_sk_dump (struct sock*,struct sk_buff*,int ,char*) ;
 int trace_tipc_sk_overlimit1 (struct sock*,struct sk_buff*,int ,char*) ;
 int trace_tipc_sk_rej_msg (struct sock*,struct sk_buff*,int ,char*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void tipc_sk_enqueue(struct sk_buff_head *inputq, struct sock *sk,
       u32 dport, struct sk_buff_head *xmitq)
{
 unsigned long time_limit = jiffies + 2;
 struct sk_buff *skb;
 unsigned int lim;
 atomic_t *dcnt;
 u32 onode;

 while (skb_queue_len(inputq)) {
  if (unlikely(time_after_eq(jiffies, time_limit)))
   return;

  skb = tipc_skb_dequeue(inputq, dport);
  if (unlikely(!skb))
   return;


  if (!sock_owned_by_user(sk)) {
   tipc_sk_filter_rcv(sk, skb, xmitq);
   continue;
  }


  dcnt = &tipc_sk(sk)->dupl_rcvcnt;
  if (!sk->sk_backlog.len)
   atomic_set(dcnt, 0);
  lim = rcvbuf_limit(sk, skb) + atomic_read(dcnt);
  if (likely(!sk_add_backlog(sk, skb, lim))) {
   trace_tipc_sk_overlimit1(sk, skb, TIPC_DUMP_ALL,
       "bklg & rcvq >90% allocated!");
   continue;
  }

  trace_tipc_sk_dump(sk, skb, TIPC_DUMP_ALL, "err_overload!");

  onode = tipc_own_addr(sock_net(sk));
  atomic_inc(&sk->sk_drops);
  if (tipc_msg_reverse(onode, &skb, TIPC_ERR_OVERLOAD)) {
   trace_tipc_sk_rej_msg(sk, skb, TIPC_DUMP_ALL,
           "@sk_enqueue!");
   __skb_queue_tail(xmitq, skb);
  }
  break;
 }
}
