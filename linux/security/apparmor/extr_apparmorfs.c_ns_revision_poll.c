
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {struct aa_revision* private_data; } ;
struct aa_revision {scalar_t__ last_read; TYPE_1__* ns; } ;
typedef int poll_table ;
typedef int __poll_t ;
struct TYPE_2__ {scalar_t__ revision; int lock; int wait; int level; } ;


 int EPOLLIN ;
 int EPOLLRDNORM ;
 int mutex_lock_nested (int *,int ) ;
 int mutex_unlock (int *) ;
 int poll_wait (struct file*,int *,int *) ;

__attribute__((used)) static __poll_t ns_revision_poll(struct file *file, poll_table *pt)
{
 struct aa_revision *rev = file->private_data;
 __poll_t mask = 0;

 if (rev) {
  mutex_lock_nested(&rev->ns->lock, rev->ns->level);
  poll_wait(file, &rev->ns->wait, pt);
  if (rev->last_read < rev->ns->revision)
   mask |= EPOLLIN | EPOLLRDNORM;
  mutex_unlock(&rev->ns->lock);
 }

 return mask;
}
