
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net {int dummy; } ;
struct TYPE_2__ {int block_opens; int list; } ;
struct lockd_net {int nsm_handles; TYPE_1__ lockd_manager; int grace_period_end; } ;


 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_LIST_HEAD (int *) ;
 int grace_ender ;
 int lockd_net_id ;
 struct lockd_net* net_generic (struct net*,int ) ;

__attribute__((used)) static int lockd_init_net(struct net *net)
{
 struct lockd_net *ln = net_generic(net, lockd_net_id);

 INIT_DELAYED_WORK(&ln->grace_period_end, grace_ender);
 INIT_LIST_HEAD(&ln->lockd_manager.list);
 ln->lockd_manager.block_opens = 0;
 INIT_LIST_HEAD(&ln->nsm_handles);
 return 0;
}
