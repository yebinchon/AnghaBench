
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sg_pool {int pool; } ;
struct scatterlist {int dummy; } ;
typedef int gfp_t ;


 struct scatterlist* mempool_alloc (int ,int ) ;
 int sg_pool_index (unsigned int) ;
 struct sg_pool* sg_pools ;

__attribute__((used)) static struct scatterlist *sg_pool_alloc(unsigned int nents, gfp_t gfp_mask)
{
 struct sg_pool *sgp;

 sgp = sg_pools + sg_pool_index(nents);
 return mempool_alloc(sgp->pool, gfp_mask);
}
