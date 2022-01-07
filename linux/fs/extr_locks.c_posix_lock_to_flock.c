
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flock {scalar_t__ l_start; scalar_t__ l_len; int l_type; scalar_t__ l_whence; int l_pid; } ;
struct file_lock {scalar_t__ fl_start; scalar_t__ fl_end; int fl_type; } ;


 int EOVERFLOW ;
 scalar_t__ OFFSET_MAX ;
 scalar_t__ OFFT_OFFSET_MAX ;
 int current ;
 int locks_translate_pid (struct file_lock*,int ) ;
 int task_active_pid_ns (int ) ;

__attribute__((used)) static int posix_lock_to_flock(struct flock *flock, struct file_lock *fl)
{
 flock->l_pid = locks_translate_pid(fl, task_active_pid_ns(current));
 flock->l_start = fl->fl_start;
 flock->l_len = fl->fl_end == OFFSET_MAX ? 0 :
  fl->fl_end - fl->fl_start + 1;
 flock->l_whence = 0;
 flock->l_type = fl->fl_type;
 return 0;
}
