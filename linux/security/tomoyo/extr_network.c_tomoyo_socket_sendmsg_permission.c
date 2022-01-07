
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct tomoyo_addr_info {unsigned int protocol; int operation; } ;
struct socket {unsigned int type; TYPE_1__* sk; } ;
struct sockaddr {int dummy; } ;
struct msghdr {int msg_namelen; scalar_t__ msg_name; } ;
struct TYPE_2__ {int sk_protocol; } ;


 scalar_t__ const PF_UNIX ;
 unsigned int const SOCK_DGRAM ;
 unsigned int const SOCK_RAW ;
 int TOMOYO_NETWORK_SEND ;
 int tomoyo_check_inet_address (struct sockaddr*,int ,int ,struct tomoyo_addr_info*) ;
 int tomoyo_check_unix_address (struct sockaddr*,int ,struct tomoyo_addr_info*) ;
 scalar_t__ tomoyo_sock_family (TYPE_1__*) ;

int tomoyo_socket_sendmsg_permission(struct socket *sock, struct msghdr *msg,
         int size)
{
 struct tomoyo_addr_info address;
 const u8 family = tomoyo_sock_family(sock->sk);
 const unsigned int type = sock->type;

 if (!msg->msg_name || !family ||
     (type != SOCK_DGRAM && type != SOCK_RAW))
  return 0;
 address.protocol = type;
 address.operation = TOMOYO_NETWORK_SEND;
 if (family == PF_UNIX)
  return tomoyo_check_unix_address((struct sockaddr *)
       msg->msg_name,
       msg->msg_namelen, &address);
 return tomoyo_check_inet_address((struct sockaddr *) msg->msg_name,
      msg->msg_namelen,
      sock->sk->sk_protocol, &address);
}
