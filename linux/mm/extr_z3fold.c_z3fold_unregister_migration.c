
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct z3fold_pool {scalar_t__ inode; } ;


 int iput (scalar_t__) ;

__attribute__((used)) static void z3fold_unregister_migration(struct z3fold_pool *pool)
{
 if (pool->inode)
  iput(pool->inode);
 }
