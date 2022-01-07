
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;
struct lockd_net {int lockd_manager; int grace_period_end; } ;


 int cancel_delayed_work_sync (int *) ;
 struct net init_net ;
 int lockd_net_id ;
 int locks_end_grace (int *) ;
 struct lockd_net* net_generic (struct net*,int ) ;
 int nlmsvc_invalidate_all () ;
 scalar_t__ nlmsvc_ops ;
 int set_grace_period (struct net*) ;

__attribute__((used)) static void restart_grace(void)
{
 if (nlmsvc_ops) {
  struct net *net = &init_net;
  struct lockd_net *ln = net_generic(net, lockd_net_id);

  cancel_delayed_work_sync(&ln->grace_period_end);
  locks_end_grace(&ln->lockd_manager);
  nlmsvc_invalidate_all();
  set_grace_period(net);
 }
}
