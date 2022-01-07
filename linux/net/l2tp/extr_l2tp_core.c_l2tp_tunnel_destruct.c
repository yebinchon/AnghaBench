
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int (* sk_destruct ) (struct sock*) ;int * sk_user_data; } ;
struct l2tp_tunnel {int encap; int (* old_sk_destruct ) (struct sock*) ;int name; } ;
struct TYPE_2__ {int * encap_destroy; int * encap_rcv; int encap_type; } ;




 int L2TP_MSG_CONTROL ;
 int kfree_rcu (struct l2tp_tunnel*,int ) ;
 int l2tp_info (struct l2tp_tunnel*,int ,char*,int ) ;
 struct l2tp_tunnel* l2tp_tunnel (struct sock*) ;
 int rcu ;
 int stub1 (struct sock*) ;
 TYPE_1__* udp_sk (struct sock*) ;

__attribute__((used)) static void l2tp_tunnel_destruct(struct sock *sk)
{
 struct l2tp_tunnel *tunnel = l2tp_tunnel(sk);

 if (tunnel == ((void*)0))
  goto end;

 l2tp_info(tunnel, L2TP_MSG_CONTROL, "%s: closing...\n", tunnel->name);


 switch (tunnel->encap) {
 case 128:

  (udp_sk(sk))->encap_type = 0;
  (udp_sk(sk))->encap_rcv = ((void*)0);
  (udp_sk(sk))->encap_destroy = ((void*)0);
  break;
 case 129:
  break;
 }


 sk->sk_destruct = tunnel->old_sk_destruct;
 sk->sk_user_data = ((void*)0);


 if (sk->sk_destruct)
  (*sk->sk_destruct)(sk);

 kfree_rcu(tunnel, rcu);
end:
 return;
}
