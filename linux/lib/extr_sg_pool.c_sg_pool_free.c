
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sg_pool {int pool; } ;
struct scatterlist {int dummy; } ;


 int mempool_free (struct scatterlist*,int ) ;
 int sg_pool_index (unsigned int) ;
 struct sg_pool* sg_pools ;

__attribute__((used)) static void sg_pool_free(struct scatterlist *sgl, unsigned int nents)
{
 struct sg_pool *sgp;

 sgp = sg_pools + sg_pool_index(nents);
 mempool_free(sgl, sgp->pool);
}
