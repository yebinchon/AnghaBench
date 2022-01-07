
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_dir_entry {scalar_t__ nlink; int mode; struct proc_dir_entry* parent; int subdir; int subdir_node; } ;


 int ENOENT ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ __xlate_proc_name (char const*,struct proc_dir_entry**,char const**) ;
 int pde_put (struct proc_dir_entry*) ;
 struct proc_dir_entry* pde_subdir_find (struct proc_dir_entry*,char const*,unsigned int) ;
 struct proc_dir_entry* pde_subdir_first (struct proc_dir_entry*) ;
 int proc_entry_rundown (struct proc_dir_entry*) ;
 int proc_subdir_lock ;
 int rb_erase (int *,int *) ;
 unsigned int strlen (char const*) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

int remove_proc_subtree(const char *name, struct proc_dir_entry *parent)
{
 struct proc_dir_entry *root = ((void*)0), *de, *next;
 const char *fn = name;
 unsigned int len;

 write_lock(&proc_subdir_lock);
 if (__xlate_proc_name(name, &parent, &fn) != 0) {
  write_unlock(&proc_subdir_lock);
  return -ENOENT;
 }
 len = strlen(fn);

 root = pde_subdir_find(parent, fn, len);
 if (!root) {
  write_unlock(&proc_subdir_lock);
  return -ENOENT;
 }
 rb_erase(&root->subdir_node, &parent->subdir);

 de = root;
 while (1) {
  next = pde_subdir_first(de);
  if (next) {
   rb_erase(&next->subdir_node, &de->subdir);
   de = next;
   continue;
  }
  write_unlock(&proc_subdir_lock);

  proc_entry_rundown(de);
  next = de->parent;
  if (S_ISDIR(de->mode))
   next->nlink--;
  de->nlink = 0;
  if (de == root)
   break;
  pde_put(de);

  write_lock(&proc_subdir_lock);
  de = next;
 }
 pde_put(root);
 return 0;
}
