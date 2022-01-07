
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int s_flags; int * s_d_op; } ;
struct TYPE_2__ {int * dir_ops; } ;


 TYPE_1__* MSDOS_SB (struct super_block*) ;
 int SB_NOATIME ;
 int msdos_dentry_operations ;
 int msdos_dir_inode_operations ;

__attribute__((used)) static void setup(struct super_block *sb)
{
 MSDOS_SB(sb)->dir_ops = &msdos_dir_inode_operations;
 sb->s_d_op = &msdos_dentry_operations;
 sb->s_flags |= SB_NOATIME;
}
