
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tipc_bc_base {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_2__ {struct tipc_bc_base* bcbase; } ;


 TYPE_1__* tipc_net (struct net*) ;

__attribute__((used)) static struct tipc_bc_base *tipc_bc_base(struct net *net)
{
 return tipc_net(net)->bcbase;
}
