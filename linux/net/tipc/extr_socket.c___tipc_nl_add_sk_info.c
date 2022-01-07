
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct tipc_sock {int publications; int portid; struct sock sk; } ;
struct sk_buff {int sk; } ;
struct net {int dummy; } ;


 int EMSGSIZE ;
 int TIPC_NLA_SOCK_ADDR ;
 int TIPC_NLA_SOCK_HAS_PUBL ;
 int TIPC_NLA_SOCK_REF ;
 scalar_t__ __tipc_nl_add_sk_con (struct sk_buff*,struct tipc_sock*) ;
 int list_empty (int *) ;
 scalar_t__ nla_put_flag (struct sk_buff*,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 struct net* sock_net (int ) ;
 int tipc_own_addr (struct net*) ;
 scalar_t__ tipc_sk_connected (struct sock*) ;

__attribute__((used)) static int __tipc_nl_add_sk_info(struct sk_buff *skb, struct tipc_sock
     *tsk)
{
 struct net *net = sock_net(skb->sk);
 struct sock *sk = &tsk->sk;

 if (nla_put_u32(skb, TIPC_NLA_SOCK_REF, tsk->portid) ||
     nla_put_u32(skb, TIPC_NLA_SOCK_ADDR, tipc_own_addr(net)))
  return -EMSGSIZE;

 if (tipc_sk_connected(sk)) {
  if (__tipc_nl_add_sk_con(skb, tsk))
   return -EMSGSIZE;
 } else if (!list_empty(&tsk->publications)) {
  if (nla_put_flag(skb, TIPC_NLA_SOCK_HAS_PUBL))
   return -EMSGSIZE;
 }
 return 0;
}
