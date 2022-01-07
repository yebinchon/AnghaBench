
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file_lock {TYPE_1__* fl_ops; int fl_file; } ;
struct TYPE_2__ {int (* fl_copy_lock ) (struct file_lock*,struct file_lock*) ;} ;


 int WARN_ON_ONCE (TYPE_1__*) ;
 int locks_copy_conflock (struct file_lock*,struct file_lock*) ;
 int stub1 (struct file_lock*,struct file_lock*) ;

void locks_copy_lock(struct file_lock *new, struct file_lock *fl)
{

 WARN_ON_ONCE(new->fl_ops);

 locks_copy_conflock(new, fl);

 new->fl_file = fl->fl_file;
 new->fl_ops = fl->fl_ops;

 if (fl->fl_ops) {
  if (fl->fl_ops->fl_copy_lock)
   fl->fl_ops->fl_copy_lock(new, fl);
 }
}
