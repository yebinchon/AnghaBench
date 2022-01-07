
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct file_lock {TYPE_2__* fl_lmops; int * fl_owner; TYPE_1__* fl_ops; int fl_link; int fl_blocked_member; int fl_blocked_requests; int fl_list; int fl_wait; } ;
struct TYPE_4__ {int (* lm_put_owner ) (int *) ;} ;
struct TYPE_3__ {int (* fl_release_private ) (struct file_lock*) ;} ;


 int BUG_ON (int) ;
 int hlist_unhashed (int *) ;
 int list_empty (int *) ;
 int stub1 (struct file_lock*) ;
 int stub2 (int *) ;
 int waitqueue_active (int *) ;

void locks_release_private(struct file_lock *fl)
{
 BUG_ON(waitqueue_active(&fl->fl_wait));
 BUG_ON(!list_empty(&fl->fl_list));
 BUG_ON(!list_empty(&fl->fl_blocked_requests));
 BUG_ON(!list_empty(&fl->fl_blocked_member));
 BUG_ON(!hlist_unhashed(&fl->fl_link));

 if (fl->fl_ops) {
  if (fl->fl_ops->fl_release_private)
   fl->fl_ops->fl_release_private(fl);
  fl->fl_ops = ((void*)0);
 }

 if (fl->fl_lmops) {
  if (fl->fl_lmops->lm_put_owner) {
   fl->fl_lmops->lm_put_owner(fl->fl_owner);
   fl->fl_owner = ((void*)0);
  }
  fl->fl_lmops = ((void*)0);
 }
}
