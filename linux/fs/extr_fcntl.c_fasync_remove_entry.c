
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int f_lock; int f_flags; } ;
struct fasync_struct {int fa_rcu; struct fasync_struct* fa_next; int fa_lock; struct file* fa_file; } ;


 int FASYNC ;
 int call_rcu (int *,int ) ;
 int fasync_free_rcu ;
 int fasync_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int write_lock_irq (int *) ;
 int write_unlock_irq (int *) ;

int fasync_remove_entry(struct file *filp, struct fasync_struct **fapp)
{
 struct fasync_struct *fa, **fp;
 int result = 0;

 spin_lock(&filp->f_lock);
 spin_lock(&fasync_lock);
 for (fp = fapp; (fa = *fp) != ((void*)0); fp = &fa->fa_next) {
  if (fa->fa_file != filp)
   continue;

  write_lock_irq(&fa->fa_lock);
  fa->fa_file = ((void*)0);
  write_unlock_irq(&fa->fa_lock);

  *fp = fa->fa_next;
  call_rcu(&fa->fa_rcu, fasync_free_rcu);
  filp->f_flags &= ~FASYNC;
  result = 1;
  break;
 }
 spin_unlock(&fasync_lock);
 spin_unlock(&filp->f_lock);
 return result;
}
