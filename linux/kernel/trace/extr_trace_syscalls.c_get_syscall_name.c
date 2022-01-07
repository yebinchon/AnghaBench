
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct syscall_metadata {char const* name; } ;


 struct syscall_metadata* syscall_nr_to_meta (int) ;

const char *get_syscall_name(int syscall)
{
 struct syscall_metadata *entry;

 entry = syscall_nr_to_meta(syscall);
 if (!entry)
  return ((void*)0);

 return entry->name;
}
