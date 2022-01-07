
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;


 int __state_in_grace (struct net*,int) ;

bool opens_in_grace(struct net *net)
{
 return __state_in_grace(net, 1);
}
