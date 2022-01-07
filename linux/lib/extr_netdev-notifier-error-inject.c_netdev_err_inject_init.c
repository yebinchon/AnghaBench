
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nb; } ;


 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int debugfs_remove_recursive (int ) ;
 int dir ;
 TYPE_1__ netdev_notifier_err_inject ;
 int notifier_err_inject_dir ;
 int notifier_err_inject_init (char*,int ,TYPE_1__*,int ) ;
 int priority ;
 int register_netdevice_notifier (int *) ;

__attribute__((used)) static int netdev_err_inject_init(void)
{
 int err;

 dir = notifier_err_inject_init("netdev", notifier_err_inject_dir,
           &netdev_notifier_err_inject, priority);
 if (IS_ERR(dir))
  return PTR_ERR(dir);

 err = register_netdevice_notifier(&netdev_notifier_err_inject.nb);
 if (err)
  debugfs_remove_recursive(dir);

 return err;
}
