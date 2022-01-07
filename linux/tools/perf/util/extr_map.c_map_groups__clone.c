
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {struct map_groups* mg; } ;
struct maps {int lock; } ;
struct map_groups {struct maps maps; } ;
struct map {int dummy; } ;


 int ENOMEM ;
 int down_read (int *) ;
 struct map* map__clone (struct map*) ;
 struct map* map__next (struct map*) ;
 int map__put (struct map*) ;
 int map_groups__insert (struct map_groups*,struct map*) ;
 struct map* maps__first (struct maps*) ;
 int unwind__prepare_access (struct map_groups*,struct map*,int *) ;
 int up_read (int *) ;

int map_groups__clone(struct thread *thread, struct map_groups *parent)
{
 struct map_groups *mg = thread->mg;
 int err = -ENOMEM;
 struct map *map;
 struct maps *maps = &parent->maps;

 down_read(&maps->lock);

 for (map = maps__first(maps); map; map = map__next(map)) {
  struct map *new = map__clone(map);
  if (new == ((void*)0))
   goto out_unlock;

  err = unwind__prepare_access(mg, new, ((void*)0));
  if (err)
   goto out_unlock;

  map_groups__insert(mg, new);
  map__put(new);
 }

 err = 0;
out_unlock:
 up_read(&maps->lock);
 return err;
}
