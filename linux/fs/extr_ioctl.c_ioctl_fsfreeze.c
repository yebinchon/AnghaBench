
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {TYPE_1__* s_op; int s_user_ns; } ;
struct file {int dummy; } ;
struct TYPE_4__ {struct super_block* i_sb; } ;
struct TYPE_3__ {int (* freeze_super ) (struct super_block*) ;int * freeze_fs; } ;


 int CAP_SYS_ADMIN ;
 int EOPNOTSUPP ;
 int EPERM ;
 TYPE_2__* file_inode (struct file*) ;
 int freeze_super (struct super_block*) ;
 int ns_capable (int ,int ) ;
 int stub1 (struct super_block*) ;

__attribute__((used)) static int ioctl_fsfreeze(struct file *filp)
{
 struct super_block *sb = file_inode(filp)->i_sb;

 if (!ns_capable(sb->s_user_ns, CAP_SYS_ADMIN))
  return -EPERM;


 if (sb->s_op->freeze_fs == ((void*)0) && sb->s_op->freeze_super == ((void*)0))
  return -EOPNOTSUPP;


 if (sb->s_op->freeze_super)
  return sb->s_op->freeze_super(sb);
 return freeze_super(sb);
}
