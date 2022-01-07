
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {int file; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* shutdown ) (struct socket*,int) ;} ;


 int fput_light (int ,int) ;
 int security_socket_shutdown (struct socket*,int) ;
 struct socket* sockfd_lookup_light (int,int*,int*) ;
 int stub1 (struct socket*,int) ;

int __sys_shutdown(int fd, int how)
{
 int err, fput_needed;
 struct socket *sock;

 sock = sockfd_lookup_light(fd, &err, &fput_needed);
 if (sock != ((void*)0)) {
  err = security_socket_shutdown(sock, how);
  if (!err)
   err = sock->ops->shutdown(sock, how);
  fput_light(sock->file, fput_needed);
 }
 return err;
}
