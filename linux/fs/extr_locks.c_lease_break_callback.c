
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_lock {int fl_fasync; } ;


 int POLL_MSG ;
 int SIGIO ;
 int kill_fasync (int *,int ,int ) ;

__attribute__((used)) static bool
lease_break_callback(struct file_lock *fl)
{
 kill_fasync(&fl->fl_fasync, SIGIO, POLL_MSG);
 return 0;
}
