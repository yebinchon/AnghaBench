
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct socket {int dummy; } ;
struct sock {int sk_protocol; int sk_timer; int sk_state; int sk_sndtimeo; int sk_destruct; } ;
struct net {int dummy; } ;
typedef int gfp_t ;
struct TYPE_4__ {int accept_q; } ;
struct TYPE_3__ {int setting; } ;


 int BT_OPEN ;
 int BT_VOICE_CVSD_16BIT ;
 int INIT_LIST_HEAD (int *) ;
 int PF_BLUETOOTH ;
 int SCO_CONN_TIMEOUT ;
 int SOCK_ZAPPED ;
 TYPE_2__* bt_sk (struct sock*) ;
 int bt_sock_link (int *,struct sock*) ;
 TYPE_1__* sco_pi (struct sock*) ;
 int sco_proto ;
 int sco_sk_list ;
 int sco_sock_destruct ;
 int sco_sock_timeout ;
 struct sock* sk_alloc (struct net*,int ,int ,int *,int) ;
 int sock_init_data (struct socket*,struct sock*) ;
 int sock_reset_flag (struct sock*,int ) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static struct sock *sco_sock_alloc(struct net *net, struct socket *sock,
       int proto, gfp_t prio, int kern)
{
 struct sock *sk;

 sk = sk_alloc(net, PF_BLUETOOTH, prio, &sco_proto, kern);
 if (!sk)
  return ((void*)0);

 sock_init_data(sock, sk);
 INIT_LIST_HEAD(&bt_sk(sk)->accept_q);

 sk->sk_destruct = sco_sock_destruct;
 sk->sk_sndtimeo = SCO_CONN_TIMEOUT;

 sock_reset_flag(sk, SOCK_ZAPPED);

 sk->sk_protocol = proto;
 sk->sk_state = BT_OPEN;

 sco_pi(sk)->setting = BT_VOICE_CVSD_16BIT;

 timer_setup(&sk->sk_timer, sco_sock_timeout, 0);

 bt_sock_link(&sco_sk_list, sk);
 return sk;
}
