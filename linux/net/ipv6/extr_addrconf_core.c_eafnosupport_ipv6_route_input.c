
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int EAFNOSUPPORT ;

__attribute__((used)) static int eafnosupport_ipv6_route_input(struct sk_buff *skb)
{
 return -EAFNOSUPPORT;
}
