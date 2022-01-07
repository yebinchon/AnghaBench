
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file_lock {int fl_owner; TYPE_1__* fl_lmops; int * fl_ops; int fl_end; int fl_start; int fl_type; int fl_flags; int * fl_file; int fl_pid; } ;
struct TYPE_2__ {int (* lm_get_owner ) (int ) ;} ;


 int stub1 (int ) ;

void locks_copy_conflock(struct file_lock *new, struct file_lock *fl)
{
 new->fl_owner = fl->fl_owner;
 new->fl_pid = fl->fl_pid;
 new->fl_file = ((void*)0);
 new->fl_flags = fl->fl_flags;
 new->fl_type = fl->fl_type;
 new->fl_start = fl->fl_start;
 new->fl_end = fl->fl_end;
 new->fl_lmops = fl->fl_lmops;
 new->fl_ops = ((void*)0);

 if (fl->fl_lmops) {
  if (fl->fl_lmops->lm_get_owner)
   fl->fl_lmops->lm_get_owner(fl->fl_owner);
 }
}
