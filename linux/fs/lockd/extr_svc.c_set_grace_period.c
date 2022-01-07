
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;
struct lockd_net {int grace_period_end; int lockd_manager; } ;


 int cancel_delayed_work_sync (int *) ;
 unsigned long get_lockd_grace_period () ;
 int lockd_net_id ;
 int locks_start_grace (struct net*,int *) ;
 struct lockd_net* net_generic (struct net*,int ) ;
 int schedule_delayed_work (int *,unsigned long) ;

__attribute__((used)) static void set_grace_period(struct net *net)
{
 unsigned long grace_period = get_lockd_grace_period();
 struct lockd_net *ln = net_generic(net, lockd_net_id);

 locks_start_grace(net, &ln->lockd_manager);
 cancel_delayed_work_sync(&ln->grace_period_end);
 schedule_delayed_work(&ln->grace_period_end, grace_period);
}
