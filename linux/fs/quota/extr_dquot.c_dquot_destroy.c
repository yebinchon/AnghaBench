
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dquot {int dummy; } ;


 int dquot_cachep ;
 int kmem_cache_free (int ,struct dquot*) ;

void dquot_destroy(struct dquot *dquot)
{
 kmem_cache_free(dquot_cachep, dquot);
}
