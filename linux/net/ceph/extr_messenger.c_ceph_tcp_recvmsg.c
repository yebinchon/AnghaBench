
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct msghdr {int msg_flags; int msg_iter; } ;
struct kvec {void* member_0; size_t member_1; } ;


 int EAGAIN ;
 int MSG_DONTWAIT ;
 int MSG_NOSIGNAL ;
 int MSG_TRUNC ;
 int READ ;
 int iov_iter_kvec (int *,int ,struct kvec*,int,size_t) ;
 int sock_recvmsg (struct socket*,struct msghdr*,int) ;

__attribute__((used)) static int ceph_tcp_recvmsg(struct socket *sock, void *buf, size_t len)
{
 struct kvec iov = {buf, len};
 struct msghdr msg = { .msg_flags = MSG_DONTWAIT | MSG_NOSIGNAL };
 int r;

 if (!buf)
  msg.msg_flags |= MSG_TRUNC;

 iov_iter_kvec(&msg.msg_iter, READ, &iov, 1, len);
 r = sock_recvmsg(sock, &msg, msg.msg_flags);
 if (r == -EAGAIN)
  r = 0;
 return r;
}
