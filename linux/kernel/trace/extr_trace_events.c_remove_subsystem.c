
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_subsystem_dir {int list; int entry; int nr_events; } ;


 int __put_system_dir (struct trace_subsystem_dir*) ;
 int list_del (int *) ;
 int tracefs_remove_recursive (int ) ;

__attribute__((used)) static void remove_subsystem(struct trace_subsystem_dir *dir)
{
 if (!dir)
  return;

 if (!--dir->nr_events) {
  tracefs_remove_recursive(dir->entry);
  list_del(&dir->list);
  __put_system_dir(dir);
 }
}
