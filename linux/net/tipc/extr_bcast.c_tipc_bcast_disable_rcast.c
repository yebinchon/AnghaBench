
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net {int dummy; } ;
struct TYPE_2__ {int rcast_support; } ;


 TYPE_1__* tipc_bc_base (struct net*) ;

void tipc_bcast_disable_rcast(struct net *net)
{
 tipc_bc_base(net)->rcast_support = 0;
}
