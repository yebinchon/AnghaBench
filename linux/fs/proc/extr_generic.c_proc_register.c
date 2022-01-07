
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_dir_entry {int low_ino; int name; struct proc_dir_entry* parent; } ;


 int WARN (int,char*,int ,int ) ;
 int pde_free (struct proc_dir_entry*) ;
 int pde_subdir_insert (struct proc_dir_entry*,struct proc_dir_entry*) ;
 scalar_t__ proc_alloc_inum (int *) ;
 int proc_free_inum (int ) ;
 int proc_subdir_lock ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

struct proc_dir_entry *proc_register(struct proc_dir_entry *dir,
  struct proc_dir_entry *dp)
{
 if (proc_alloc_inum(&dp->low_ino))
  goto out_free_entry;

 write_lock(&proc_subdir_lock);
 dp->parent = dir;
 if (pde_subdir_insert(dir, dp) == 0) {
  WARN(1, "proc_dir_entry '%s/%s' already registered\n",
       dir->name, dp->name);
  write_unlock(&proc_subdir_lock);
  goto out_free_inum;
 }
 write_unlock(&proc_subdir_lock);

 return dp;
out_free_inum:
 proc_free_inum(dp->low_ino);
out_free_entry:
 pde_free(dp);
 return ((void*)0);
}
