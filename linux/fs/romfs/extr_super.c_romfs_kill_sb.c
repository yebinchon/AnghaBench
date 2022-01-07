
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {scalar_t__ s_bdev; scalar_t__ s_mtd; } ;


 int kill_block_super (struct super_block*) ;
 int kill_mtd_super (struct super_block*) ;

__attribute__((used)) static void romfs_kill_sb(struct super_block *sb)
{
}
