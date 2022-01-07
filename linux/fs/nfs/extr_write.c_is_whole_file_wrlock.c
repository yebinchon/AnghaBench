
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_lock {scalar_t__ fl_start; scalar_t__ fl_end; scalar_t__ fl_type; } ;


 scalar_t__ F_WRLCK ;
 scalar_t__ OFFSET_MAX ;

__attribute__((used)) static bool
is_whole_file_wrlock(struct file_lock *fl)
{
 return fl->fl_start == 0 && fl->fl_end == OFFSET_MAX &&
   fl->fl_type == F_WRLCK;
}
