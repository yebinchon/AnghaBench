
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {TYPE_1__* sk; } ;
struct TYPE_2__ {scalar_t__ sk_family; } ;


 int ENOPROTOOPT ;
 int ENOTSOCK ;
 struct socket* ERR_PTR (int ) ;
 scalar_t__ PF_XDP ;
 struct socket* sockfd_lookup (int,int*) ;
 int sockfd_put (struct socket*) ;

__attribute__((used)) static struct socket *xsk_lookup_xsk_from_fd(int fd)
{
 struct socket *sock;
 int err;

 sock = sockfd_lookup(fd, &err);
 if (!sock)
  return ERR_PTR(-ENOTSOCK);

 if (sock->sk->sk_family != PF_XDP) {
  sockfd_put(sock);
  return ERR_PTR(-ENOPROTOOPT);
 }

 return sock;
}
