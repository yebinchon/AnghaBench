
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nb; } ;


 int debugfs_remove_recursive (int ) ;
 int dir ;
 TYPE_1__ netdev_notifier_err_inject ;
 int unregister_netdevice_notifier (int *) ;

__attribute__((used)) static void netdev_err_inject_exit(void)
{
 unregister_netdevice_notifier(&netdev_notifier_err_inject.nb);
 debugfs_remove_recursive(dir);
}
