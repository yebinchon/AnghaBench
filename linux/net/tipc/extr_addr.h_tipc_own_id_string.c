
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net {int dummy; } ;
struct TYPE_2__ {char* node_id_string; } ;


 TYPE_1__* tipc_net (struct net*) ;

__attribute__((used)) static inline char *tipc_own_id_string(struct net *net)
{
 return tipc_net(net)->node_id_string;
}
