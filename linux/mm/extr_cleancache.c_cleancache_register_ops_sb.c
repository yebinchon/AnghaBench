
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int cleancache_poolid; } ;




 int __cleancache_init_fs (struct super_block*) ;
 int __cleancache_init_shared_fs (struct super_block*) ;

__attribute__((used)) static void cleancache_register_ops_sb(struct super_block *sb, void *unused)
{
 switch (sb->cleancache_poolid) {
 case 129:
  __cleancache_init_fs(sb);
  break;
 case 128:
  __cleancache_init_shared_fs(sb);
  break;
 }
}
