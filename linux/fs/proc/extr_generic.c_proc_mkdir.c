
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_dir_entry {int dummy; } ;


 struct proc_dir_entry* proc_mkdir_data (char const*,int ,struct proc_dir_entry*,int *) ;

struct proc_dir_entry *proc_mkdir(const char *name,
  struct proc_dir_entry *parent)
{
 return proc_mkdir_data(name, 0, parent, ((void*)0));
}
