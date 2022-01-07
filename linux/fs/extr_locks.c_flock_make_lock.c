
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file_lock {int fl_type; int fl_end; int fl_flags; int fl_pid; struct file* fl_owner; struct file* fl_file; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int tgid; } ;


 int ENOMEM ;
 struct file_lock* ERR_PTR (int) ;
 int FL_FLOCK ;
 int OFFSET_MAX ;
 TYPE_1__* current ;
 int flock_translate_cmd (unsigned int) ;
 struct file_lock* locks_alloc_lock () ;
 int locks_init_lock (struct file_lock*) ;

__attribute__((used)) static struct file_lock *
flock_make_lock(struct file *filp, unsigned int cmd, struct file_lock *fl)
{
 int type = flock_translate_cmd(cmd);

 if (type < 0)
  return ERR_PTR(type);

 if (fl == ((void*)0)) {
  fl = locks_alloc_lock();
  if (fl == ((void*)0))
   return ERR_PTR(-ENOMEM);
 } else {
  locks_init_lock(fl);
 }

 fl->fl_file = filp;
 fl->fl_owner = filp;
 fl->fl_pid = current->tgid;
 fl->fl_flags = FL_FLOCK;
 fl->fl_type = type;
 fl->fl_end = OFFSET_MAX;

 return fl;
}
