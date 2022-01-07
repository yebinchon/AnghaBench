
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wait_queue_head_t ;
struct kernfs_node {int flags; int rb; int active; } ;
struct TYPE_2__ {int deactivate_waitq; } ;


 int DEFINE_WAIT (int ) ;
 int KERNFS_SUICIDAL ;
 int KERNFS_SUICIDED ;
 scalar_t__ KN_DEACTIVATED_BIAS ;
 int RB_EMPTY_NODE (int *) ;
 int TASK_UNINTERRUPTIBLE ;
 int WARN_ON_ONCE (int) ;
 int __kernfs_remove (struct kernfs_node*) ;
 scalar_t__ atomic_read (int *) ;
 int finish_wait (int *,int *) ;
 int kernfs_break_active_protection (struct kernfs_node*) ;
 int kernfs_mutex ;
 TYPE_1__* kernfs_root (struct kernfs_node*) ;
 int kernfs_unbreak_active_protection (struct kernfs_node*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int prepare_to_wait (int *,int *,int ) ;
 int schedule () ;
 int wait ;

bool kernfs_remove_self(struct kernfs_node *kn)
{
 bool ret;

 mutex_lock(&kernfs_mutex);
 kernfs_break_active_protection(kn);
 if (!(kn->flags & KERNFS_SUICIDAL)) {
  kn->flags |= KERNFS_SUICIDAL;
  __kernfs_remove(kn);
  kn->flags |= KERNFS_SUICIDED;
  ret = 1;
 } else {
  wait_queue_head_t *waitq = &kernfs_root(kn)->deactivate_waitq;
  DEFINE_WAIT(wait);

  while (1) {
   prepare_to_wait(waitq, &wait, TASK_UNINTERRUPTIBLE);

   if ((kn->flags & KERNFS_SUICIDED) &&
       atomic_read(&kn->active) == KN_DEACTIVATED_BIAS)
    break;

   mutex_unlock(&kernfs_mutex);
   schedule();
   mutex_lock(&kernfs_mutex);
  }
  finish_wait(waitq, &wait);
  WARN_ON_ONCE(!RB_EMPTY_NODE(&kn->rb));
  ret = 0;
 }





 kernfs_unbreak_active_protection(kn);

 mutex_unlock(&kernfs_mutex);
 return ret;
}
