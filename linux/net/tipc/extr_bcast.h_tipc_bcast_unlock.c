
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net {int dummy; } ;
struct TYPE_2__ {int bclock; } ;


 int spin_unlock_bh (int *) ;
 TYPE_1__* tipc_net (struct net*) ;

__attribute__((used)) static inline void tipc_bcast_unlock(struct net *net)
{
 spin_unlock_bh(&tipc_net(net)->bclock);
}
