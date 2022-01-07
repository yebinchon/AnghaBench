
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct socket {int dummy; } ;
struct sock {int sk_protocol; int sk_state; int sk_sndtimeo; int sk_destruct; } ;
struct net {int dummy; } ;
struct l2cap_chan {int dummy; } ;
typedef int gfp_t ;
struct TYPE_4__ {int accept_q; } ;
struct TYPE_3__ {struct l2cap_chan* chan; } ;


 int BT_OPEN ;
 int INIT_LIST_HEAD (int *) ;
 int L2CAP_CONN_TIMEOUT ;
 int PF_BLUETOOTH ;
 int SOCK_ZAPPED ;
 TYPE_2__* bt_sk (struct sock*) ;
 struct l2cap_chan* l2cap_chan_create () ;
 int l2cap_chan_hold (struct l2cap_chan*) ;
 TYPE_1__* l2cap_pi (struct sock*) ;
 int l2cap_proto ;
 int l2cap_sock_destruct ;
 struct sock* sk_alloc (struct net*,int ,int ,int *,int) ;
 int sk_free (struct sock*) ;
 int sock_init_data (struct socket*,struct sock*) ;
 int sock_reset_flag (struct sock*,int ) ;

__attribute__((used)) static struct sock *l2cap_sock_alloc(struct net *net, struct socket *sock,
         int proto, gfp_t prio, int kern)
{
 struct sock *sk;
 struct l2cap_chan *chan;

 sk = sk_alloc(net, PF_BLUETOOTH, prio, &l2cap_proto, kern);
 if (!sk)
  return ((void*)0);

 sock_init_data(sock, sk);
 INIT_LIST_HEAD(&bt_sk(sk)->accept_q);

 sk->sk_destruct = l2cap_sock_destruct;
 sk->sk_sndtimeo = L2CAP_CONN_TIMEOUT;

 sock_reset_flag(sk, SOCK_ZAPPED);

 sk->sk_protocol = proto;
 sk->sk_state = BT_OPEN;

 chan = l2cap_chan_create();
 if (!chan) {
  sk_free(sk);
  return ((void*)0);
 }

 l2cap_chan_hold(chan);

 l2cap_pi(sk)->chan = chan;

 return sk;
}
