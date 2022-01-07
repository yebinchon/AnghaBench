
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct z3fold_pool {TYPE_3__* inode; } ;
struct TYPE_7__ {TYPE_1__* i_mapping; } ;
struct TYPE_6__ {int mnt_sb; } ;
struct TYPE_5__ {int * a_ops; struct z3fold_pool* private_data; } ;


 scalar_t__ IS_ERR (TYPE_3__*) ;
 TYPE_3__* alloc_anon_inode (int ) ;
 int z3fold_aops ;
 TYPE_2__* z3fold_mnt ;

__attribute__((used)) static int z3fold_register_migration(struct z3fold_pool *pool)
{
 pool->inode = alloc_anon_inode(z3fold_mnt->mnt_sb);
 if (IS_ERR(pool->inode)) {
  pool->inode = ((void*)0);
  return 1;
 }

 pool->inode->i_mapping->private_data = pool;
 pool->inode->i_mapping->a_ops = &z3fold_aops;
 return 0;
}
