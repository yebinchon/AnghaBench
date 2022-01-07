
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {TYPE_1__* ops; } ;
struct msghdr {int dummy; } ;
struct TYPE_2__ {int recvmsg; } ;


 int INDIRECT_CALL_INET (int ,int ,int ,struct socket*,struct msghdr*,int ,int) ;
 int inet6_recvmsg ;
 int inet_recvmsg ;
 int msg_data_left (struct msghdr*) ;

__attribute__((used)) static inline int sock_recvmsg_nosec(struct socket *sock, struct msghdr *msg,
         int flags)
{
 return INDIRECT_CALL_INET(sock->ops->recvmsg, inet6_recvmsg,
      inet_recvmsg, sock, msg, msg_data_left(msg),
      flags);
}
