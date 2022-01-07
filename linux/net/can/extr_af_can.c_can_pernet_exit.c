
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rcv_lists_stats; int pkg_stats; int rx_alldev_list; int stattimer; } ;
struct net {TYPE_1__ can; } ;


 int CONFIG_PROC_FS ;
 scalar_t__ IS_ENABLED (int ) ;
 int can_remove_proc (struct net*) ;
 int del_timer_sync (int *) ;
 int kfree (int ) ;
 scalar_t__ stats_timer ;

__attribute__((used)) static void can_pernet_exit(struct net *net)
{
 if (IS_ENABLED(CONFIG_PROC_FS)) {
  can_remove_proc(net);
  if (stats_timer)
   del_timer_sync(&net->can.stattimer);
 }

 kfree(net->can.rx_alldev_list);
 kfree(net->can.pkg_stats);
 kfree(net->can.rcv_lists_stats);
}
