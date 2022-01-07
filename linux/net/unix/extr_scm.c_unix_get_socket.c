
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {TYPE_1__* ops; struct sock* sk; } ;
struct sock {int dummy; } ;
struct inode {int i_mode; } ;
struct file {int f_mode; } ;
struct TYPE_2__ {scalar_t__ family; } ;


 int FMODE_PATH ;
 scalar_t__ PF_UNIX ;
 struct socket* SOCKET_I (struct inode*) ;
 scalar_t__ S_ISSOCK (int ) ;
 struct inode* file_inode (struct file*) ;
 struct sock* io_uring_get_socket (struct file*) ;

struct sock *unix_get_socket(struct file *filp)
{
 struct sock *u_sock = ((void*)0);
 struct inode *inode = file_inode(filp);


 if (S_ISSOCK(inode->i_mode) && !(filp->f_mode & FMODE_PATH)) {
  struct socket *sock = SOCKET_I(inode);
  struct sock *s = sock->sk;


  if (s && sock->ops && sock->ops->family == PF_UNIX)
   u_sock = s;
 } else {

  u_sock = io_uring_get_socket(filp);
 }
 return u_sock;
}
