
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int sk; } ;
struct net {int dummy; } ;


 struct net* sock_net (int ) ;
 struct socket* sockfd_lookup (int,int*) ;
 int sockfd_put (struct socket*) ;

bool svc_alien_sock(struct net *net, int fd)
{
 int err;
 struct socket *sock = sockfd_lookup(fd, &err);
 bool ret = 0;

 if (!sock)
  goto out;
 if (sock_net(sock->sk) != net)
  ret = 1;
 sockfd_put(sock);
out:
 return ret;
}
