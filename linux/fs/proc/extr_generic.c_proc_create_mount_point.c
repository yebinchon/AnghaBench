
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct proc_dir_entry {int nlink; int * proc_iops; int * proc_fops; int * data; } ;


 int S_IFDIR ;
 int S_IRUGO ;
 int S_IXUGO ;
 struct proc_dir_entry* __proc_create (struct proc_dir_entry**,char const*,int,int) ;
 struct proc_dir_entry* proc_register (struct proc_dir_entry*,struct proc_dir_entry*) ;

struct proc_dir_entry *proc_create_mount_point(const char *name)
{
 umode_t mode = S_IFDIR | S_IRUGO | S_IXUGO;
 struct proc_dir_entry *ent, *parent = ((void*)0);

 ent = __proc_create(&parent, name, mode, 2);
 if (ent) {
  ent->data = ((void*)0);
  ent->proc_fops = ((void*)0);
  ent->proc_iops = ((void*)0);
  parent->nlink++;
  ent = proc_register(parent, ent);
  if (!ent)
   parent->nlink--;
 }
 return ent;
}
