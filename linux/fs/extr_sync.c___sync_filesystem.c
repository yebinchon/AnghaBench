
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int s_bdev; TYPE_1__* s_op; } ;
struct TYPE_2__ {int (* sync_fs ) (struct super_block*,int) ;} ;


 int WB_REASON_SYNC ;
 int __sync_blockdev (int ,int) ;
 int stub1 (struct super_block*,int) ;
 int sync_inodes_sb (struct super_block*) ;
 int writeback_inodes_sb (struct super_block*,int ) ;

__attribute__((used)) static int __sync_filesystem(struct super_block *sb, int wait)
{
 if (wait)
  sync_inodes_sb(sb);
 else
  writeback_inodes_sb(sb, WB_REASON_SYNC);

 if (sb->s_op->sync_fs)
  sb->s_op->sync_fs(sb, wait);
 return __sync_blockdev(sb->s_bdev, wait);
}
