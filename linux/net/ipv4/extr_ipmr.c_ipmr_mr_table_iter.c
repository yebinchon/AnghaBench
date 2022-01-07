
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct mr_table* mrt; } ;
struct net {TYPE_1__ ipv4; } ;
struct mr_table {int dummy; } ;



__attribute__((used)) static struct mr_table *ipmr_mr_table_iter(struct net *net,
        struct mr_table *mrt)
{
 if (!mrt)
  return net->ipv4.mrt;
 return ((void*)0);
}
