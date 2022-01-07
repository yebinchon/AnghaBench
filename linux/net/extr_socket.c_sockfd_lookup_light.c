
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct fd {int flags; scalar_t__ file; } ;


 int EBADF ;
 struct fd fdget (int) ;
 int fdput (struct fd) ;
 scalar_t__ likely (struct socket*) ;
 struct socket* sock_from_file (scalar_t__,int*) ;

__attribute__((used)) static struct socket *sockfd_lookup_light(int fd, int *err, int *fput_needed)
{
 struct fd f = fdget(fd);
 struct socket *sock;

 *err = -EBADF;
 if (f.file) {
  sock = sock_from_file(f.file, err);
  if (likely(sock)) {
   *fput_needed = f.flags;
   return sock;
  }
  fdput(f);
 }
 return ((void*)0);
}
