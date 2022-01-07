
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_subsystem_dir {int ref_count; int subsystem; } ;


 int WARN_ON_ONCE (int) ;
 int __put_system (int ) ;
 int kfree (struct trace_subsystem_dir*) ;
 int system_refcount (int ) ;

__attribute__((used)) static void __put_system_dir(struct trace_subsystem_dir *dir)
{
 WARN_ON_ONCE(dir->ref_count == 0);

 WARN_ON_ONCE(system_refcount(dir->subsystem) == 1 && dir->ref_count != 1);

 __put_system(dir->subsystem);
 if (!--dir->ref_count)
  kfree(dir);
}
