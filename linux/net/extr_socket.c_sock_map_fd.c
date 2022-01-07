
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct file {int dummy; } ;


 int IS_ERR (struct file*) ;
 int PTR_ERR (struct file*) ;
 int fd_install (int,struct file*) ;
 int get_unused_fd_flags (int) ;
 int put_unused_fd (int) ;
 struct file* sock_alloc_file (struct socket*,int,int *) ;
 int sock_release (struct socket*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int sock_map_fd(struct socket *sock, int flags)
{
 struct file *newfile;
 int fd = get_unused_fd_flags(flags);
 if (unlikely(fd < 0)) {
  sock_release(sock);
  return fd;
 }

 newfile = sock_alloc_file(sock, flags, ((void*)0));
 if (!IS_ERR(newfile)) {
  fd_install(fd, newfile);
  return fd;
 }

 put_unused_fd(fd);
 return PTR_ERR(newfile);
}
