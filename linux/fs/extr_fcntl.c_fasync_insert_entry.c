
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int f_lock; int f_flags; } ;
struct fasync_struct {int fa_fd; struct fasync_struct* fa_next; struct file* fa_file; int magic; int fa_lock; } ;


 int FASYNC ;
 int FASYNC_MAGIC ;
 int fasync_lock ;
 int rcu_assign_pointer (struct fasync_struct*,struct fasync_struct*) ;
 int rwlock_init (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int write_lock_irq (int *) ;
 int write_unlock_irq (int *) ;

struct fasync_struct *fasync_insert_entry(int fd, struct file *filp, struct fasync_struct **fapp, struct fasync_struct *new)
{
        struct fasync_struct *fa, **fp;

 spin_lock(&filp->f_lock);
 spin_lock(&fasync_lock);
 for (fp = fapp; (fa = *fp) != ((void*)0); fp = &fa->fa_next) {
  if (fa->fa_file != filp)
   continue;

  write_lock_irq(&fa->fa_lock);
  fa->fa_fd = fd;
  write_unlock_irq(&fa->fa_lock);
  goto out;
 }

 rwlock_init(&new->fa_lock);
 new->magic = FASYNC_MAGIC;
 new->fa_file = filp;
 new->fa_fd = fd;
 new->fa_next = *fapp;
 rcu_assign_pointer(*fapp, new);
 filp->f_flags |= FASYNC;

out:
 spin_unlock(&fasync_lock);
 spin_unlock(&filp->f_lock);
 return fa;
}
