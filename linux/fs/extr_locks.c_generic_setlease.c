
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_mode; int i_uid; } ;
struct file_lock {TYPE_1__* fl_lmops; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int lm_break; } ;


 int CAP_LEASE ;
 int EACCES ;
 int EINVAL ;
 int ENOLCK ;



 int S_ISREG (int ) ;
 int WARN_ON_ONCE (int) ;
 int capable (int ) ;
 int current_fsuid () ;
 int generic_add_lease (struct file*,long,struct file_lock**,void**) ;
 int generic_delete_lease (struct file*,void*) ;
 struct inode* locks_inode (struct file*) ;
 int security_file_lock (struct file*,long) ;
 int uid_eq (int ,int ) ;

int generic_setlease(struct file *filp, long arg, struct file_lock **flp,
   void **priv)
{
 struct inode *inode = locks_inode(filp);
 int error;

 if ((!uid_eq(current_fsuid(), inode->i_uid)) && !capable(CAP_LEASE))
  return -EACCES;
 if (!S_ISREG(inode->i_mode))
  return -EINVAL;
 error = security_file_lock(filp, arg);
 if (error)
  return error;

 switch (arg) {
 case 129:
  return generic_delete_lease(filp, *priv);
 case 130:
 case 128:
  if (!(*flp)->fl_lmops->lm_break) {
   WARN_ON_ONCE(1);
   return -ENOLCK;
  }

  return generic_add_lease(filp, arg, flp, priv);
 default:
  return -EINVAL;
 }
}
