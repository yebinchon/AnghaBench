
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct proc_dir_entry {struct file_operations const* proc_fops; } ;
struct file_operations {int dummy; } ;


 int BUG_ON (int ) ;
 struct proc_dir_entry* proc_create_reg (char const*,int ,struct proc_dir_entry**,void*) ;
 struct proc_dir_entry* proc_register (struct proc_dir_entry*,struct proc_dir_entry*) ;

struct proc_dir_entry *proc_create_data(const char *name, umode_t mode,
  struct proc_dir_entry *parent,
  const struct file_operations *proc_fops, void *data)
{
 struct proc_dir_entry *p;

 BUG_ON(proc_fops == ((void*)0));

 p = proc_create_reg(name, mode, &parent, data);
 if (!p)
  return ((void*)0);
 p->proc_fops = proc_fops;
 return proc_register(parent, p);
}
