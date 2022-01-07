
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int slock; } ;
struct sock {TYPE_1__ sk_lock; } ;
struct tipc_sock {struct sock sk; } ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;


 int TIPC_DUMP_NONE ;
 int TIPC_ERR_NO_PORT ;
 int __skb_queue_head_init (struct sk_buff_head*) ;
 int buf_msg (struct sk_buff*) ;
 scalar_t__ likely (struct tipc_sock*) ;
 int msg_destnode (int ) ;
 scalar_t__ skb_queue_len (struct sk_buff_head*) ;
 int sock_net (struct sock*) ;
 int sock_put (struct sock*) ;
 struct tipc_sock* spin_trylock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ tipc_msg_lookup_dest (struct net*,struct sk_buff*,int*) ;
 int tipc_msg_reverse (int ,struct sk_buff**,int) ;
 int tipc_node_distr_xmit (int ,struct sk_buff_head*) ;
 int tipc_node_xmit_skb (struct net*,struct sk_buff*,int ,int ) ;
 int tipc_own_addr (struct net*) ;
 int tipc_sk_enqueue (struct sk_buff_head*,struct sock*,int ,struct sk_buff_head*) ;
 struct tipc_sock* tipc_sk_lookup (struct net*,int ) ;
 struct sk_buff* tipc_skb_dequeue (struct sk_buff_head*,int ) ;
 int tipc_skb_peek_port (struct sk_buff_head*,int ) ;
 int trace_tipc_sk_rej_msg (int *,struct sk_buff*,int ,char*) ;

void tipc_sk_rcv(struct net *net, struct sk_buff_head *inputq)
{
 struct sk_buff_head xmitq;
 u32 dnode, dport = 0;
 int err;
 struct tipc_sock *tsk;
 struct sock *sk;
 struct sk_buff *skb;

 __skb_queue_head_init(&xmitq);
 while (skb_queue_len(inputq)) {
  dport = tipc_skb_peek_port(inputq, dport);
  tsk = tipc_sk_lookup(net, dport);

  if (likely(tsk)) {
   sk = &tsk->sk;
   if (likely(spin_trylock_bh(&sk->sk_lock.slock))) {
    tipc_sk_enqueue(inputq, sk, dport, &xmitq);
    spin_unlock_bh(&sk->sk_lock.slock);
   }

   tipc_node_distr_xmit(sock_net(sk), &xmitq);
   sock_put(sk);
   continue;
  }

  skb = tipc_skb_dequeue(inputq, dport);
  if (!skb)
   return;


  err = TIPC_ERR_NO_PORT;
  if (tipc_msg_lookup_dest(net, skb, &err))
   goto xmit;


  if (!tipc_msg_reverse(tipc_own_addr(net), &skb, err))
   continue;

  trace_tipc_sk_rej_msg(((void*)0), skb, TIPC_DUMP_NONE, "@sk_rcv!");
xmit:
  dnode = msg_destnode(buf_msg(skb));
  tipc_node_xmit_skb(net, skb, dnode, dport);
 }
}
