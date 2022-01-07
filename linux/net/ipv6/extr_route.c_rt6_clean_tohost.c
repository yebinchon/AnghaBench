
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;
struct in6_addr {int dummy; } ;


 int fib6_clean_all (struct net*,int ,struct in6_addr*) ;
 int fib6_clean_tohost ;

void rt6_clean_tohost(struct net *net, struct in6_addr *gateway)
{
 fib6_clean_all(net, fib6_clean_tohost, gateway);
}
