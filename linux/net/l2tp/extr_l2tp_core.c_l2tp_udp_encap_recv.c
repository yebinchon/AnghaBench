
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int len; } ;
struct l2tp_tunnel {int name; } ;


 int L2TP_MSG_DATA ;
 int l2tp_dbg (struct l2tp_tunnel*,int ,char*,int ,int ) ;
 scalar_t__ l2tp_udp_recv_core (struct l2tp_tunnel*,struct sk_buff*) ;
 struct l2tp_tunnel* rcu_dereference_sk_user_data (struct sock*) ;

int l2tp_udp_encap_recv(struct sock *sk, struct sk_buff *skb)
{
 struct l2tp_tunnel *tunnel;

 tunnel = rcu_dereference_sk_user_data(sk);
 if (tunnel == ((void*)0))
  goto pass_up;

 l2tp_dbg(tunnel, L2TP_MSG_DATA, "%s: received %d bytes\n",
   tunnel->name, skb->len);

 if (l2tp_udp_recv_core(tunnel, skb))
  goto pass_up;

 return 0;

pass_up:
 return 1;
}
