
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int udp_addr ;
struct udp_port_cfg {int use_udp_checksums; scalar_t__ peer_udp_port; int peer_ip; scalar_t__ local_udp_port; int local_ip; scalar_t__ bind_ifindex; } ;
struct socket {TYPE_1__* sk; } ;
struct sockaddr_in {scalar_t__ sin_port; int sin_addr; void* sin_family; } ;
struct sockaddr {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int sk_no_check_tx; } ;


 void* AF_INET ;
 int SHUT_RDWR ;
 int SOCK_DGRAM ;
 int SOL_SOCKET ;
 int SO_BINDTOIFINDEX ;
 int kernel_bind (struct socket*,struct sockaddr*,int) ;
 int kernel_connect (struct socket*,struct sockaddr*,int,int ) ;
 int kernel_setsockopt (struct socket*,int ,int ,void*,int) ;
 int kernel_sock_shutdown (struct socket*,int ) ;
 int sock_create_kern (struct net*,void*,int ,int ,struct socket**) ;
 int sock_release (struct socket*) ;

int udp_sock_create4(struct net *net, struct udp_port_cfg *cfg,
       struct socket **sockp)
{
 int err;
 struct socket *sock = ((void*)0);
 struct sockaddr_in udp_addr;

 err = sock_create_kern(net, AF_INET, SOCK_DGRAM, 0, &sock);
 if (err < 0)
  goto error;

 if (cfg->bind_ifindex) {
  err = kernel_setsockopt(sock, SOL_SOCKET, SO_BINDTOIFINDEX,
     (void *)&cfg->bind_ifindex,
     sizeof(cfg->bind_ifindex));
  if (err < 0)
   goto error;
 }

 udp_addr.sin_family = AF_INET;
 udp_addr.sin_addr = cfg->local_ip;
 udp_addr.sin_port = cfg->local_udp_port;
 err = kernel_bind(sock, (struct sockaddr *)&udp_addr,
     sizeof(udp_addr));
 if (err < 0)
  goto error;

 if (cfg->peer_udp_port) {
  udp_addr.sin_family = AF_INET;
  udp_addr.sin_addr = cfg->peer_ip;
  udp_addr.sin_port = cfg->peer_udp_port;
  err = kernel_connect(sock, (struct sockaddr *)&udp_addr,
         sizeof(udp_addr), 0);
  if (err < 0)
   goto error;
 }

 sock->sk->sk_no_check_tx = !cfg->use_udp_checksums;

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
