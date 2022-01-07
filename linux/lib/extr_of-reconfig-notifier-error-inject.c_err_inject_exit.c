
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nb; } ;


 int debugfs_remove_recursive (int ) ;
 int dir ;
 int of_reconfig_notifier_unregister (int *) ;
 TYPE_1__ reconfig_err_inject ;

__attribute__((used)) static void err_inject_exit(void)
{
 of_reconfig_notifier_unregister(&reconfig_err_inject.nb);
 debugfs_remove_recursive(dir);
}
