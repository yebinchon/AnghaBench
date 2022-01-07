
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct z3fold_pool {int pages_nr; } ;


 int atomic64_read (int *) ;

__attribute__((used)) static u64 z3fold_get_pool_size(struct z3fold_pool *pool)
{
 return atomic64_read(&pool->pages_nr);
}
