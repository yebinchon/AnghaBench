
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct file_lock {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_4__ {int flags; } ;
struct TYPE_3__ {int i_sb; } ;


 int EINVAL ;
 int F_GETLK ;
 int ORANGEFS_OPT_LOCAL_LOCK ;
 TYPE_2__* ORANGEFS_SB (int ) ;
 TYPE_1__* file_inode (struct file*) ;
 int posix_lock_file (struct file*,struct file_lock*,int *) ;
 int posix_test_lock (struct file*,struct file_lock*) ;

__attribute__((used)) static int orangefs_lock(struct file *filp, int cmd, struct file_lock *fl)
{
 int rc = -EINVAL;

 if (ORANGEFS_SB(file_inode(filp)->i_sb)->flags & ORANGEFS_OPT_LOCAL_LOCK) {
  if (cmd == F_GETLK) {
   rc = 0;
   posix_test_lock(filp, fl);
  } else {
   rc = posix_lock_file(filp, fl, ((void*)0));
  }
 }

 return rc;
}
