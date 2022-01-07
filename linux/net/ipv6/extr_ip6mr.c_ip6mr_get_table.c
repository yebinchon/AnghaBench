
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {struct mr_table* mrt6; } ;
struct net {TYPE_1__ ipv6; } ;
struct mr_table {int dummy; } ;



__attribute__((used)) static struct mr_table *ip6mr_get_table(struct net *net, u32 id)
{
 return net->ipv6.mrt6;
}
