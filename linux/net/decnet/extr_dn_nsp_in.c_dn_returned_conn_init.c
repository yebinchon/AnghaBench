
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int (* sk_state_change ) (struct sock*) ;int sk_state; } ;
struct sk_buff {int dummy; } ;
struct dn_scp {scalar_t__ state; } ;


 scalar_t__ DN_CI ;
 scalar_t__ DN_NC ;
 struct dn_scp* DN_SK (struct sock*) ;
 int SOCK_DEAD ;
 int TCP_CLOSE ;
 int kfree_skb (struct sk_buff*) ;
 int sock_flag (struct sock*,int ) ;
 int stub1 (struct sock*) ;

__attribute__((used)) static void dn_returned_conn_init(struct sock *sk, struct sk_buff *skb)
{
 struct dn_scp *scp = DN_SK(sk);

 if (scp->state == DN_CI) {
  scp->state = DN_NC;
  sk->sk_state = TCP_CLOSE;
  if (!sock_flag(sk, SOCK_DEAD))
   sk->sk_state_change(sk);
 }

 kfree_skb(skb);
}
