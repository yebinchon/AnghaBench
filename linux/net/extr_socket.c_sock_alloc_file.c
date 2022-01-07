
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct socket {struct file* file; TYPE_2__* sk; } ;
struct file {struct socket* private_data; } ;
struct TYPE_4__ {TYPE_1__* sk_prot_creator; } ;
struct TYPE_3__ {char* name; } ;


 scalar_t__ IS_ERR (struct file*) ;
 int O_NONBLOCK ;
 int O_RDWR ;
 int SOCK_INODE (struct socket*) ;
 struct file* alloc_file_pseudo (int ,int ,char const*,int,int *) ;
 int sock_mnt ;
 int sock_release (struct socket*) ;
 int socket_file_ops ;

struct file *sock_alloc_file(struct socket *sock, int flags, const char *dname)
{
 struct file *file;

 if (!dname)
  dname = sock->sk ? sock->sk->sk_prot_creator->name : "";

 file = alloc_file_pseudo(SOCK_INODE(sock), sock_mnt, dname,
    O_RDWR | (flags & O_NONBLOCK),
    &socket_file_ops);
 if (IS_ERR(file)) {
  sock_release(sock);
  return file;
 }

 sock->file = file;
 file->private_data = sock;
 return file;
}
