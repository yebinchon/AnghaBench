
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct file_lock {scalar_t__ fl_start; scalar_t__ fl_end; } ;
struct nlm_lock {struct file_lock fl; } ;


 scalar_t__ OFFSET_MAX ;
 int loff_t_to_s64 (scalar_t__) ;

__attribute__((used)) static void nlm4_compute_offsets(const struct nlm_lock *lock,
     u64 *l_offset, u64 *l_len)
{
 const struct file_lock *fl = &lock->fl;

 *l_offset = loff_t_to_s64(fl->fl_start);
 if (fl->fl_end == OFFSET_MAX)
  *l_len = 0;
 else
  *l_len = loff_t_to_s64(fl->fl_end - fl->fl_start + 1);
}
