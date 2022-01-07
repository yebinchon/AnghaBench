
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_rcvbuf; int sk_rmem_alloc; } ;
struct sk_buff {int dummy; } ;
struct netlink_sock {int state; } ;


 int NETLINK_S_CONGESTED ;
 int __netlink_sendskb (struct sock*,struct sk_buff*) ;
 int atomic_read (int *) ;
 int netlink_skb_set_owner_r (struct sk_buff*,struct sock*) ;
 struct netlink_sock* nlk_sk (struct sock*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int netlink_broadcast_deliver(struct sock *sk, struct sk_buff *skb)
{
 struct netlink_sock *nlk = nlk_sk(sk);

 if (atomic_read(&sk->sk_rmem_alloc) <= sk->sk_rcvbuf &&
     !test_bit(NETLINK_S_CONGESTED, &nlk->state)) {
  netlink_skb_set_owner_r(skb, sk);
  __netlink_sendskb(sk, skb);
  return atomic_read(&sk->sk_rmem_alloc) > (sk->sk_rcvbuf >> 1);
 }
 return -1;
}
