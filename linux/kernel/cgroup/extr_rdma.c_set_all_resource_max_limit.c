
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdmacg_resource_pool {int dummy; } ;


 int RDMACG_RESOURCE_MAX ;
 int S32_MAX ;
 int set_resource_limit (struct rdmacg_resource_pool*,int,int ) ;

__attribute__((used)) static void set_all_resource_max_limit(struct rdmacg_resource_pool *rpool)
{
 int i;

 for (i = 0; i < RDMACG_RESOURCE_MAX; i++)
  set_resource_limit(rpool, i, S32_MAX);
}
