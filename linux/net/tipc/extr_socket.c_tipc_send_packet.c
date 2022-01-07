
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct msghdr {int dummy; } ;


 int EMSGSIZE ;
 size_t TIPC_MAX_USER_MSG_SIZE ;
 int tipc_sendstream (struct socket*,struct msghdr*,size_t) ;

__attribute__((used)) static int tipc_send_packet(struct socket *sock, struct msghdr *m, size_t dsz)
{
 if (dsz > TIPC_MAX_USER_MSG_SIZE)
  return -EMSGSIZE;

 return tipc_sendstream(sock, m, dsz);
}
