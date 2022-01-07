
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_lock {int fl_file; } ;


 int locks_lock_file_wait (int ,struct file_lock*) ;

__attribute__((used)) static int do_vfs_lock(struct file_lock *fl)
{
 return locks_lock_file_wait(fl->fl_file, fl);
}
