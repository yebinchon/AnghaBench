
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int debugfs_remove_recursive (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pstore_ftrace_dir ;
 int pstore_ftrace_enabled ;
 int pstore_ftrace_lock ;
 int pstore_ftrace_ops ;
 int unregister_ftrace_function (int *) ;

void pstore_unregister_ftrace(void)
{
 mutex_lock(&pstore_ftrace_lock);
 if (pstore_ftrace_enabled) {
  unregister_ftrace_function(&pstore_ftrace_ops);
  pstore_ftrace_enabled = 0;
 }
 mutex_unlock(&pstore_ftrace_lock);

 debugfs_remove_recursive(pstore_ftrace_dir);
}
