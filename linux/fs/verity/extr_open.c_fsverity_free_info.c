
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hashstate; } ;
struct fsverity_info {TYPE_1__ tree_params; } ;


 int fsverity_info_cachep ;
 int kfree (int ) ;
 int kmem_cache_free (int ,struct fsverity_info*) ;

void fsverity_free_info(struct fsverity_info *vi)
{
 if (!vi)
  return;
 kfree(vi->tree_params.hashstate);
 kmem_cache_free(fsverity_info_cachep, vi);
}
