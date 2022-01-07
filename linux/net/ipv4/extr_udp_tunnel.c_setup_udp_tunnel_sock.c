
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct udp_tunnel_sock_cfg {int gro_complete; int gro_receive; int encap_destroy; int encap_err_lookup; int encap_rcv; int encap_type; int sk_user_data; } ;
struct socket {struct sock* sk; } ;
struct sock {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_4__ {scalar_t__ mc_loop; } ;
struct TYPE_3__ {int gro_complete; int gro_receive; int encap_destroy; int encap_err_lookup; int encap_rcv; int encap_type; } ;


 int inet_inc_convert_csum (struct sock*) ;
 TYPE_2__* inet_sk (struct sock*) ;
 int rcu_assign_sk_user_data (struct sock*,int ) ;
 TYPE_1__* udp_sk (struct sock*) ;
 int udp_tunnel_encap_enable (struct socket*) ;

void setup_udp_tunnel_sock(struct net *net, struct socket *sock,
      struct udp_tunnel_sock_cfg *cfg)
{
 struct sock *sk = sock->sk;


 inet_sk(sk)->mc_loop = 0;


 inet_inc_convert_csum(sk);

 rcu_assign_sk_user_data(sk, cfg->sk_user_data);

 udp_sk(sk)->encap_type = cfg->encap_type;
 udp_sk(sk)->encap_rcv = cfg->encap_rcv;
 udp_sk(sk)->encap_err_lookup = cfg->encap_err_lookup;
 udp_sk(sk)->encap_destroy = cfg->encap_destroy;
 udp_sk(sk)->gro_receive = cfg->gro_receive;
 udp_sk(sk)->gro_complete = cfg->gro_complete;

 udp_tunnel_encap_enable(sock);
}
