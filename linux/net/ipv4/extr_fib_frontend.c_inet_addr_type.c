
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;
typedef int __be32 ;


 int RT_TABLE_LOCAL ;
 unsigned int __inet_dev_addr_type (struct net*,int *,int ,int ) ;

unsigned int inet_addr_type(struct net *net, __be32 addr)
{
 return __inet_dev_addr_type(net, ((void*)0), addr, RT_TABLE_LOCAL);
}
