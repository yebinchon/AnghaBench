
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fscache_object {int dummy; } ;


 int fscache_n_cache_no_space_reject ;
 int fscache_stat (int *) ;

void fscache_object_retrying_stale(struct fscache_object *object)
{
 fscache_stat(&fscache_n_cache_no_space_reject);
}
