
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_lock {int fl_flags; } ;


 int FL_DOWNGRADE_PENDING ;
 int FL_UNLOCK_PENDING ;



__attribute__((used)) static void lease_clear_pending(struct file_lock *fl, int arg)
{
 switch (arg) {
 case 128:
  fl->fl_flags &= ~FL_UNLOCK_PENDING;

 case 129:
  fl->fl_flags &= ~FL_DOWNGRADE_PENDING;
 }
}
