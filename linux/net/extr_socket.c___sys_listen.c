
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct socket {int file; TYPE_1__* ops; int sk; } ;
struct TYPE_5__ {int sysctl_somaxconn; } ;
struct TYPE_6__ {TYPE_2__ core; } ;
struct TYPE_4__ {int (* listen ) (struct socket*,int) ;} ;


 int fput_light (int ,int) ;
 int security_socket_listen (struct socket*,int) ;
 TYPE_3__* sock_net (int ) ;
 struct socket* sockfd_lookup_light (int,int*,int*) ;
 int stub1 (struct socket*,int) ;

int __sys_listen(int fd, int backlog)
{
 struct socket *sock;
 int err, fput_needed;
 int somaxconn;

 sock = sockfd_lookup_light(fd, &err, &fput_needed);
 if (sock) {
  somaxconn = sock_net(sock->sk)->core.sysctl_somaxconn;
  if ((unsigned int)backlog > somaxconn)
   backlog = somaxconn;

  err = security_socket_listen(sock, backlog);
  if (!err)
   err = sock->ops->listen(sock, backlog);

  fput_light(sock->file, fput_needed);
 }
 return err;
}
