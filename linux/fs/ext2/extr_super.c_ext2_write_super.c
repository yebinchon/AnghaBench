
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;


 int ext2_sync_fs (struct super_block*,int) ;
 int sb_rdonly (struct super_block*) ;

__attribute__((used)) static void ext2_write_super(struct super_block *sb)
{
 if (!sb_rdonly(sb))
  ext2_sync_fs(sb, 1);
}
