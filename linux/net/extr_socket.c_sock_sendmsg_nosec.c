
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {TYPE_1__* ops; } ;
struct msghdr {int dummy; } ;
struct TYPE_2__ {int sendmsg; } ;


 int BUG_ON (int) ;
 int EIOCBQUEUED ;
 int INDIRECT_CALL_INET (int ,int ,int ,struct socket*,struct msghdr*,int ) ;
 int inet6_sendmsg ;
 int inet_sendmsg ;
 int msg_data_left (struct msghdr*) ;

__attribute__((used)) static inline int sock_sendmsg_nosec(struct socket *sock, struct msghdr *msg)
{
 int ret = INDIRECT_CALL_INET(sock->ops->sendmsg, inet6_sendmsg,
         inet_sendmsg, sock, msg,
         msg_data_left(msg));
 BUG_ON(ret == -EIOCBQUEUED);
 return ret;
}
