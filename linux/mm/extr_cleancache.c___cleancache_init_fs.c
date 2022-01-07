
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int cleancache_poolid; } ;
struct TYPE_2__ {int (* init_fs ) (int ) ;} ;


 int CLEANCACHE_NO_BACKEND ;
 int CLEANCACHE_NO_POOL ;
 int PAGE_SIZE ;
 TYPE_1__* cleancache_ops ;
 int stub1 (int ) ;

void __cleancache_init_fs(struct super_block *sb)
{
 int pool_id = CLEANCACHE_NO_BACKEND;

 if (cleancache_ops) {
  pool_id = cleancache_ops->init_fs(PAGE_SIZE);
  if (pool_id < 0)
   pool_id = CLEANCACHE_NO_POOL;
 }
 sb->cleancache_poolid = pool_id;
}
