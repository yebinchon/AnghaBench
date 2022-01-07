
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_subsystem_dir {scalar_t__ ref_count; int subsystem; } ;


 int WARN_ON_ONCE (int) ;
 int __get_system (int ) ;

__attribute__((used)) static void __get_system_dir(struct trace_subsystem_dir *dir)
{
 WARN_ON_ONCE(dir->ref_count == 0);
 dir->ref_count++;
 __get_system(dir->subsystem);
}
