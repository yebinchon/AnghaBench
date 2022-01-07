
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct msghdr {int dummy; } ;


 int AA_MAY_SEND ;
 int OP_SENDMSG ;
 int aa_sock_msg_perm (int ,int ,struct socket*,struct msghdr*,int) ;

__attribute__((used)) static int apparmor_socket_sendmsg(struct socket *sock,
       struct msghdr *msg, int size)
{
 return aa_sock_msg_perm(OP_SENDMSG, AA_MAY_SEND, sock, msg, size);
}
