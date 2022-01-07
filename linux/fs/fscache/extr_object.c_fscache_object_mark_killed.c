
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fscache_object {TYPE_1__* cache; int flags; } ;
typedef enum fscache_why_object_killed { ____Placeholder_fscache_why_object_killed } fscache_why_object_killed ;
struct TYPE_2__ {int identifier; } ;



 int FSCACHE_OBJECT_KILLED_BY_CACHE ;



 int fscache_n_cache_culled_objects ;
 int fscache_n_cache_no_space_reject ;
 int fscache_n_cache_retired_objects ;
 int fscache_n_cache_stale_objects ;
 int fscache_stat (int *) ;
 int pr_err (char*,int ) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

void fscache_object_mark_killed(struct fscache_object *object,
    enum fscache_why_object_killed why)
{
 if (test_and_set_bit(FSCACHE_OBJECT_KILLED_BY_CACHE, &object->flags)) {
  pr_err("Error: Object already killed by cache [%s]\n",
         object->cache->identifier);
  return;
 }

 switch (why) {
 case 130:
  fscache_stat(&fscache_n_cache_no_space_reject);
  break;
 case 131:
  fscache_stat(&fscache_n_cache_stale_objects);
  break;
 case 128:
  fscache_stat(&fscache_n_cache_retired_objects);
  break;
 case 129:
  fscache_stat(&fscache_n_cache_culled_objects);
  break;
 }
}
