
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_lock {scalar_t__ fl_owner; } ;



__attribute__((used)) static int posix_same_owner(struct file_lock *fl1, struct file_lock *fl2)
{
 return fl1->fl_owner == fl2->fl_owner;
}
