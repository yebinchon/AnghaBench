
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct msghdr {int msg_flags; } ;
struct kvec {size_t iov_len; void* iov_base; } ;


 int EnterFunction (int) ;
 int LeaveFunction (int) ;
 int MSG_DONTWAIT ;
 int MSG_NOSIGNAL ;
 int kernel_sendmsg (struct socket*,struct msghdr*,struct kvec*,int,size_t) ;

__attribute__((used)) static int
ip_vs_send_async(struct socket *sock, const char *buffer, const size_t length)
{
 struct msghdr msg = {.msg_flags = MSG_DONTWAIT|MSG_NOSIGNAL};
 struct kvec iov;
 int len;

 EnterFunction(7);
 iov.iov_base = (void *)buffer;
 iov.iov_len = length;

 len = kernel_sendmsg(sock, &msg, &iov, 1, (size_t)(length));

 LeaveFunction(7);
 return len;
}
