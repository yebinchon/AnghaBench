
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
typedef int udp6_addr ;
struct udp_port_cfg {int use_udp6_rx_checksums; int use_udp6_tx_checksums; scalar_t__ peer_udp_port; int peer_ip6; scalar_t__ local_udp_port; int local_ip6; scalar_t__ bind_ifindex; scalar_t__ ipv6_v6only; } ;
struct socket {int sk; } ;
struct sockaddr_in6 {scalar_t__ sin6_port; int sin6_addr; void* sin6_family; } ;
struct sockaddr {int dummy; } ;
struct net {int dummy; } ;


 void* AF_INET6 ;
 int IPPROTO_IPV6 ;
 int IPV6_V6ONLY ;
 int SHUT_RDWR ;
 int SOCK_DGRAM ;
 int SOL_SOCKET ;
 int SO_BINDTOIFINDEX ;
 int kernel_bind (struct socket*,struct sockaddr*,int) ;
 int kernel_connect (struct socket*,struct sockaddr*,int,int ) ;
 int kernel_setsockopt (struct socket*,int ,int ,void*,int) ;
 int kernel_sock_shutdown (struct socket*,int ) ;
 int memcpy (int *,int *,int) ;
 int memset (struct sockaddr_in6*,int ,int) ;
 int sock_create_kern (struct net*,void*,int ,int ,struct socket**) ;
 int sock_release (struct socket*) ;
 int udp_set_no_check6_rx (int ,int) ;
 int udp_set_no_check6_tx (int ,int) ;

int udp_sock_create6(struct net *net, struct udp_port_cfg *cfg,
       struct socket **sockp)
{
 struct sockaddr_in6 udp6_addr = {};
 int err;
 struct socket *sock = ((void*)0);

 err = sock_create_kern(net, AF_INET6, SOCK_DGRAM, 0, &sock);
 if (err < 0)
  goto error;

 if (cfg->ipv6_v6only) {
  int val = 1;

  err = kernel_setsockopt(sock, IPPROTO_IPV6, IPV6_V6ONLY,
     (char *) &val, sizeof(val));
  if (err < 0)
   goto error;
 }
 if (cfg->bind_ifindex) {
  err = kernel_setsockopt(sock, SOL_SOCKET, SO_BINDTOIFINDEX,
     (void *)&cfg->bind_ifindex,
     sizeof(cfg->bind_ifindex));
  if (err < 0)
   goto error;
 }

 udp6_addr.sin6_family = AF_INET6;
 memcpy(&udp6_addr.sin6_addr, &cfg->local_ip6,
        sizeof(udp6_addr.sin6_addr));
 udp6_addr.sin6_port = cfg->local_udp_port;
 err = kernel_bind(sock, (struct sockaddr *)&udp6_addr,
     sizeof(udp6_addr));
 if (err < 0)
  goto error;

 if (cfg->peer_udp_port) {
  memset(&udp6_addr, 0, sizeof(udp6_addr));
  udp6_addr.sin6_family = AF_INET6;
  memcpy(&udp6_addr.sin6_addr, &cfg->peer_ip6,
         sizeof(udp6_addr.sin6_addr));
  udp6_addr.sin6_port = cfg->peer_udp_port;
  err = kernel_connect(sock,
         (struct sockaddr *)&udp6_addr,
         sizeof(udp6_addr), 0);
 }
 if (err < 0)
  goto error;

 udp_set_no_check6_tx(sock->sk, !cfg->use_udp6_tx_checksums);
 udp_set_no_check6_rx(sock->sk, !cfg->use_udp6_rx_checksums);

 *sockp = sock;
 return 0;

error:
 if (sock) {
  kernel_sock_shutdown(sock, SHUT_RDWR);
  sock_release(sock);
 }
 *sockp = ((void*)0);
 return err;
}
