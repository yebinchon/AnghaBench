
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct msghdr {int msg_iter; int msg_flags; } ;
struct kvec {size_t iov_len; void* iov_base; } ;


 int MSG_DONTWAIT ;
 int READ ;
 int iov_iter_kvec (int *,int ,struct kvec*,int,size_t) ;
 int sock_recvmsg (struct socket*,struct msghdr*,int ) ;

__attribute__((used)) static int o2net_recv_tcp_msg(struct socket *sock, void *data, size_t len)
{
 struct kvec vec = { .iov_len = len, .iov_base = data, };
 struct msghdr msg = { .msg_flags = MSG_DONTWAIT, };
 iov_iter_kvec(&msg.msg_iter, READ, &vec, 1, len);
 return sock_recvmsg(sock, &msg, MSG_DONTWAIT);
}
