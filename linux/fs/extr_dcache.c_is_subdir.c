
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 scalar_t__ d_ancestor (struct dentry*,struct dentry*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 unsigned int read_seqbegin (int *) ;
 scalar_t__ read_seqretry (int *,unsigned int) ;
 int rename_lock ;

bool is_subdir(struct dentry *new_dentry, struct dentry *old_dentry)
{
 bool result;
 unsigned seq;

 if (new_dentry == old_dentry)
  return 1;

 do {

  seq = read_seqbegin(&rename_lock);




  rcu_read_lock();
  if (d_ancestor(old_dentry, new_dentry))
   result = 1;
  else
   result = 0;
  rcu_read_unlock();
 } while (read_seqretry(&rename_lock, seq));

 return result;
}
