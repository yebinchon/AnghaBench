
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {scalar_t__ type; } ;
struct iov_iter {int dummy; } ;
struct msghdr {struct iov_iter msg_iter; int msg_flags; struct kiocb* msg_iocb; } ;
struct kiocb {scalar_t__ ki_pos; struct file* ki_filp; } ;
struct file {int f_flags; struct socket* private_data; } ;
typedef int ssize_t ;


 int ESPIPE ;
 int MSG_DONTWAIT ;
 int MSG_EOR ;
 int O_NONBLOCK ;
 scalar_t__ SOCK_SEQPACKET ;
 int sock_sendmsg (struct socket*,struct msghdr*) ;

__attribute__((used)) static ssize_t sock_write_iter(struct kiocb *iocb, struct iov_iter *from)
{
 struct file *file = iocb->ki_filp;
 struct socket *sock = file->private_data;
 struct msghdr msg = {.msg_iter = *from,
        .msg_iocb = iocb};
 ssize_t res;

 if (iocb->ki_pos != 0)
  return -ESPIPE;

 if (file->f_flags & O_NONBLOCK)
  msg.msg_flags = MSG_DONTWAIT;

 if (sock->type == SOCK_SEQPACKET)
  msg.msg_flags |= MSG_EOR;

 res = sock_sendmsg(sock, &msg);
 *from = msg.msg_iter;
 return res;
}
