
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct msghdr {int msg_flags; } ;
struct kvec {int dummy; } ;


 int EAGAIN ;
 int MSG_DONTWAIT ;
 int MSG_EOR ;
 int MSG_MORE ;
 int MSG_NOSIGNAL ;
 int kernel_sendmsg (struct socket*,struct msghdr*,struct kvec*,size_t,size_t) ;

__attribute__((used)) static int ceph_tcp_sendmsg(struct socket *sock, struct kvec *iov,
       size_t kvlen, size_t len, bool more)
{
 struct msghdr msg = { .msg_flags = MSG_DONTWAIT | MSG_NOSIGNAL };
 int r;

 if (more)
  msg.msg_flags |= MSG_MORE;
 else
  msg.msg_flags |= MSG_EOR;

 r = kernel_sendmsg(sock, &msg, iov, kvlen, len);
 if (r == -EAGAIN)
  r = 0;
 return r;
}
