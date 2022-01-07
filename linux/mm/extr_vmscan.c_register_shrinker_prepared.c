
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shrinker {int flags; int id; int list; } ;


 int SHRINKER_MEMCG_AWARE ;
 int down_write (int *) ;
 int idr_replace (int *,struct shrinker*,int ) ;
 int list_add_tail (int *,int *) ;
 int shrinker_idr ;
 int shrinker_list ;
 int shrinker_rwsem ;
 int up_write (int *) ;

void register_shrinker_prepared(struct shrinker *shrinker)
{
 down_write(&shrinker_rwsem);
 list_add_tail(&shrinker->list, &shrinker_list);




 up_write(&shrinker_rwsem);
}
