
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int umode_t ;
struct notifier_err_inject_action {char* name; int error; } ;
struct TYPE_2__ {int priority; int notifier_call; } ;
struct notifier_err_inject {struct notifier_err_inject_action* actions; TYPE_1__ nb; } ;
struct dentry {int dummy; } ;


 int S_IFREG ;
 int S_IRUSR ;
 int S_IWUSR ;
 struct dentry* debugfs_create_dir (char const*,struct dentry*) ;
 int debugfs_create_errno (char*,int,struct dentry*,int *) ;
 int notifier_err_inject_callback ;

struct dentry *notifier_err_inject_init(const char *name, struct dentry *parent,
   struct notifier_err_inject *err_inject, int priority)
{
 struct notifier_err_inject_action *action;
 umode_t mode = S_IFREG | S_IRUSR | S_IWUSR;
 struct dentry *dir;
 struct dentry *actions_dir;

 err_inject->nb.notifier_call = notifier_err_inject_callback;
 err_inject->nb.priority = priority;

 dir = debugfs_create_dir(name, parent);

 actions_dir = debugfs_create_dir("actions", dir);

 for (action = err_inject->actions; action->name; action++) {
  struct dentry *action_dir;

  action_dir = debugfs_create_dir(action->name, actions_dir);






  debugfs_create_errno("error", mode, action_dir, &action->error);
 }
 return dir;
}
