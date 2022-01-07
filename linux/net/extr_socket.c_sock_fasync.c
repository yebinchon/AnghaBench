
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket_wq {int fasync_list; } ;
struct socket {struct socket_wq wq; struct sock* sk; } ;
struct sock {int dummy; } ;
struct file {struct socket* private_data; } ;


 int EINVAL ;
 int SOCK_FASYNC ;
 int fasync_helper (int,struct file*,int,int *) ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 int sock_reset_flag (struct sock*,int ) ;
 int sock_set_flag (struct sock*,int ) ;

__attribute__((used)) static int sock_fasync(int fd, struct file *filp, int on)
{
 struct socket *sock = filp->private_data;
 struct sock *sk = sock->sk;
 struct socket_wq *wq = &sock->wq;

 if (sk == ((void*)0))
  return -EINVAL;

 lock_sock(sk);
 fasync_helper(fd, filp, on, &wq->fasync_list);

 if (!wq->fasync_list)
  sock_reset_flag(sk, SOCK_FASYNC);
 else
  sock_set_flag(sk, SOCK_FASYNC);

 release_sock(sk);
 return 0;
}
