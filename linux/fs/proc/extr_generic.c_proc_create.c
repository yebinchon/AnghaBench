
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct proc_dir_entry {int dummy; } ;
struct file_operations {int dummy; } ;


 struct proc_dir_entry* proc_create_data (char const*,int ,struct proc_dir_entry*,struct file_operations const*,int *) ;

struct proc_dir_entry *proc_create(const char *name, umode_t mode,
       struct proc_dir_entry *parent,
       const struct file_operations *proc_fops)
{
 return proc_create_data(name, mode, parent, proc_fops, ((void*)0));
}
