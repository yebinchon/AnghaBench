
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct proc_dir_entry {int (* single_show ) (struct seq_file*,void*) ;int * proc_fops; } ;


 struct proc_dir_entry* proc_create_reg (char const*,int ,struct proc_dir_entry**,void*) ;
 struct proc_dir_entry* proc_register (struct proc_dir_entry*,struct proc_dir_entry*) ;
 int proc_single_fops ;

struct proc_dir_entry *proc_create_single_data(const char *name, umode_t mode,
  struct proc_dir_entry *parent,
  int (*show)(struct seq_file *, void *), void *data)
{
 struct proc_dir_entry *p;

 p = proc_create_reg(name, mode, &parent, data);
 if (!p)
  return ((void*)0);
 p->proc_fops = &proc_single_fops;
 p->single_show = show;
 return proc_register(parent, p);
}
