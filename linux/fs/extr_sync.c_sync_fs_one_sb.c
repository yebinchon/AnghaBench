
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {TYPE_1__* s_op; } ;
struct TYPE_2__ {int (* sync_fs ) (struct super_block*,int) ;} ;


 int sb_rdonly (struct super_block*) ;
 int stub1 (struct super_block*,int) ;

__attribute__((used)) static void sync_fs_one_sb(struct super_block *sb, void *arg)
{
 if (!sb_rdonly(sb) && sb->s_op->sync_fs)
  sb->s_op->sync_fs(sb, *(int *)arg);
}
