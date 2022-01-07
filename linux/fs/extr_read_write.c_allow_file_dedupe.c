
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct file {int f_mode; } ;
struct TYPE_3__ {int i_uid; } ;


 int CAP_SYS_ADMIN ;
 int FMODE_WRITE ;
 int MAY_WRITE ;
 scalar_t__ capable (int ) ;
 int current_fsuid () ;
 TYPE_1__* file_inode (struct file*) ;
 int inode_permission (TYPE_1__*,int ) ;
 scalar_t__ uid_eq (int ,int ) ;

__attribute__((used)) static bool allow_file_dedupe(struct file *file)
{
 if (capable(CAP_SYS_ADMIN))
  return 1;
 if (file->f_mode & FMODE_WRITE)
  return 1;
 if (uid_eq(current_fsuid(), file_inode(file)->i_uid))
  return 1;
 if (!inode_permission(file_inode(file), MAY_WRITE))
  return 1;
 return 0;
}
