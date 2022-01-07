
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct l2tp_tunnel {int dummy; } ;


 struct l2tp_tunnel* l2tp_tunnel (struct sock*) ;
 int l2tp_tunnel_delete (struct l2tp_tunnel*) ;

__attribute__((used)) static void l2tp_udp_encap_destroy(struct sock *sk)
{
 struct l2tp_tunnel *tunnel = l2tp_tunnel(sk);

 if (tunnel)
  l2tp_tunnel_delete(tunnel);
}
