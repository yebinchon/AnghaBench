
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int dupl_rcvcnt; } ;


 int __skb_queue_head_init (struct sk_buff_head*) ;
 int atomic_add (unsigned int,int *) ;
 unsigned int sk_rmem_alloc_get (struct sock*) ;
 int sock_net (struct sock*) ;
 int tipc_node_distr_xmit (int ,struct sk_buff_head*) ;
 TYPE_1__* tipc_sk (struct sock*) ;
 int tipc_sk_filter_rcv (struct sock*,struct sk_buff*,struct sk_buff_head*) ;

__attribute__((used)) static int tipc_sk_backlog_rcv(struct sock *sk, struct sk_buff *skb)
{
 unsigned int before = sk_rmem_alloc_get(sk);
 struct sk_buff_head xmitq;
 unsigned int added;

 __skb_queue_head_init(&xmitq);

 tipc_sk_filter_rcv(sk, skb, &xmitq);
 added = sk_rmem_alloc_get(sk) - before;
 atomic_add(added, &tipc_sk(sk)->dupl_rcvcnt);


 tipc_node_distr_xmit(sock_net(sk), &xmitq);
 return 0;
}
