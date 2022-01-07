
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tipc_link {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_2__ {struct tipc_link* bcl; } ;


 TYPE_1__* tipc_net (struct net*) ;

__attribute__((used)) static inline struct tipc_link *tipc_bc_sndlink(struct net *net)
{
 return tipc_net(net)->bcl;
}
