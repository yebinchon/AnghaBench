
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct tomoyo_addr_info {unsigned int protocol; int operation; } ;
struct socket {unsigned int type; TYPE_1__* sk; } ;
struct sockaddr {int dummy; } ;
struct TYPE_2__ {int sk_protocol; } ;


 scalar_t__ const PF_UNIX ;




 int TOMOYO_NETWORK_CONNECT ;
 int TOMOYO_NETWORK_SEND ;
 int tomoyo_check_inet_address (struct sockaddr*,int,int ,struct tomoyo_addr_info*) ;
 int tomoyo_check_unix_address (struct sockaddr*,int,struct tomoyo_addr_info*) ;
 scalar_t__ tomoyo_sock_family (TYPE_1__*) ;

int tomoyo_socket_connect_permission(struct socket *sock,
         struct sockaddr *addr, int addr_len)
{
 struct tomoyo_addr_info address;
 const u8 family = tomoyo_sock_family(sock->sk);
 const unsigned int type = sock->type;

 if (!family)
  return 0;
 address.protocol = type;
 switch (type) {
 case 131:
 case 130:
  address.operation = TOMOYO_NETWORK_SEND;
  break;
 case 128:
 case 129:
  address.operation = TOMOYO_NETWORK_CONNECT;
  break;
 default:
  return 0;
 }
 if (family == PF_UNIX)
  return tomoyo_check_unix_address(addr, addr_len, &address);
 return tomoyo_check_inet_address(addr, addr_len, sock->sk->sk_protocol,
      &address);
}
