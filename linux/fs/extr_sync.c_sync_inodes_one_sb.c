
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;


 int sb_rdonly (struct super_block*) ;
 int sync_inodes_sb (struct super_block*) ;

__attribute__((used)) static void sync_inodes_one_sb(struct super_block *sb, void *arg)
{
 if (!sb_rdonly(sb))
  sync_inodes_sb(sb);
}
