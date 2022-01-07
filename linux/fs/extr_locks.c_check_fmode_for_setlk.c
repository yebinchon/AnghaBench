
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file_lock {int fl_type; TYPE_1__* fl_file; } ;
struct TYPE_2__ {int f_mode; } ;


 int EBADF ;
 int FMODE_READ ;
 int FMODE_WRITE ;



__attribute__((used)) static int
check_fmode_for_setlk(struct file_lock *fl)
{
 switch (fl->fl_type) {
 case 129:
  if (!(fl->fl_file->f_mode & FMODE_READ))
   return -EBADF;
  break;
 case 128:
  if (!(fl->fl_file->f_mode & FMODE_WRITE))
   return -EBADF;
 }
 return 0;
}
