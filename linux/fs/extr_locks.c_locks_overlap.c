
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_lock {scalar_t__ fl_end; scalar_t__ fl_start; } ;



__attribute__((used)) static inline int locks_overlap(struct file_lock *fl1, struct file_lock *fl2)
{
 return ((fl1->fl_end >= fl2->fl_start) &&
  (fl2->fl_end >= fl1->fl_start));
}
