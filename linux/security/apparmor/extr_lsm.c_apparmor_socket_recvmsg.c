
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct msghdr {int dummy; } ;


 int AA_MAY_RECEIVE ;
 int OP_RECVMSG ;
 int aa_sock_msg_perm (int ,int ,struct socket*,struct msghdr*,int) ;

__attribute__((used)) static int apparmor_socket_recvmsg(struct socket *sock,
       struct msghdr *msg, int size, int flags)
{
 return aa_sock_msg_perm(OP_RECVMSG, AA_MAY_RECEIVE, sock, msg, size);
}
