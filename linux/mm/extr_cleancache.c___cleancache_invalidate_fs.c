
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int cleancache_poolid; } ;
struct TYPE_2__ {int (* invalidate_fs ) (int) ;} ;


 int CLEANCACHE_NO_POOL ;
 TYPE_1__* cleancache_ops ;
 int stub1 (int) ;

void __cleancache_invalidate_fs(struct super_block *sb)
{
 int pool_id;

 pool_id = sb->cleancache_poolid;
 sb->cleancache_poolid = CLEANCACHE_NO_POOL;

 if (cleancache_ops && pool_id >= 0)
  cleancache_ops->invalidate_fs(pool_id);
}
