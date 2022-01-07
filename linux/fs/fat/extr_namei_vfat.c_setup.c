
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {int * s_d_op; } ;
struct TYPE_3__ {char name_check; } ;
struct TYPE_4__ {TYPE_1__ options; int * dir_ops; } ;


 TYPE_2__* MSDOS_SB (struct super_block*) ;
 int vfat_ci_dentry_ops ;
 int vfat_dentry_ops ;
 int vfat_dir_inode_operations ;

__attribute__((used)) static void setup(struct super_block *sb)
{
 MSDOS_SB(sb)->dir_ops = &vfat_dir_inode_operations;
 if (MSDOS_SB(sb)->options.name_check != 's')
  sb->s_d_op = &vfat_ci_dentry_ops;
 else
  sb->s_d_op = &vfat_dentry_ops;
}
