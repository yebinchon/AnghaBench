
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct udp_tunnel_info {unsigned short type; int port; int sa_family; } ;
struct socket {struct sock* sk; } ;
struct sock {int sk_family; } ;
struct net_device {int features; TYPE_1__* netdev_ops; } ;
struct TYPE_4__ {int inet_sport; } ;
struct TYPE_3__ {int (* ndo_udp_tunnel_add ) (struct net_device*,struct udp_tunnel_info*) ;} ;


 int NETIF_F_RX_UDP_TUNNEL_PORT ;
 TYPE_2__* inet_sk (struct sock*) ;
 int stub1 (struct net_device*,struct udp_tunnel_info*) ;

void udp_tunnel_push_rx_port(struct net_device *dev, struct socket *sock,
        unsigned short type)
{
 struct sock *sk = sock->sk;
 struct udp_tunnel_info ti;

 if (!dev->netdev_ops->ndo_udp_tunnel_add ||
     !(dev->features & NETIF_F_RX_UDP_TUNNEL_PORT))
  return;

 ti.type = type;
 ti.sa_family = sk->sk_family;
 ti.port = inet_sk(sk)->inet_sport;

 dev->netdev_ops->ndo_udp_tunnel_add(dev, &ti);
}
