
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct msghdr {int msg_iter; int * member_0; } ;
struct kvec {char* member_0; size_t const member_1; } ;


 int EnterFunction (int) ;
 int LeaveFunction (int) ;
 int MSG_DONTWAIT ;
 int READ ;
 int iov_iter_kvec (int *,int ,struct kvec*,int,size_t const) ;
 int sock_recvmsg (struct socket*,struct msghdr*,int ) ;

__attribute__((used)) static int
ip_vs_receive(struct socket *sock, char *buffer, const size_t buflen)
{
 struct msghdr msg = {((void*)0),};
 struct kvec iov = {buffer, buflen};
 int len;

 EnterFunction(7);


 iov_iter_kvec(&msg.msg_iter, READ, &iov, 1, buflen);
 len = sock_recvmsg(sock, &msg, MSG_DONTWAIT);
 if (len < 0)
  return len;

 LeaveFunction(7);
 return len;
}
