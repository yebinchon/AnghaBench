
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net {int dummy; } ;
struct name_table {int dummy; } ;
struct TYPE_2__ {struct name_table* nametbl; } ;


 TYPE_1__* tipc_net (struct net*) ;

__attribute__((used)) static inline struct name_table *tipc_name_table(struct net *net)
{
 return tipc_net(net)->nametbl;
}
