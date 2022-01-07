
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct socket {int dummy; } ;
struct sk_buff {int dummy; } ;


 int ENOPROTOOPT ;

__attribute__((used)) static int apparmor_socket_getpeersec_dgram(struct socket *sock,
         struct sk_buff *skb, u32 *secid)

{

 return -ENOPROTOOPT;
}
