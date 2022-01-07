
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {TYPE_1__* mg; } ;
struct maps {int lock; } ;
struct map {int dummy; } ;
struct TYPE_2__ {struct maps maps; } ;


 int down_read (int *) ;
 struct map* map__next (struct map*) ;
 struct map* maps__first (struct maps*) ;
 int unwind__prepare_access (TYPE_1__*,struct map*,int*) ;
 int up_read (int *) ;

__attribute__((used)) static int __thread__prepare_access(struct thread *thread)
{
 bool initialized = 0;
 int err = 0;
 struct maps *maps = &thread->mg->maps;
 struct map *map;

 down_read(&maps->lock);

 for (map = maps__first(maps); map; map = map__next(map)) {
  err = unwind__prepare_access(thread->mg, map, &initialized);
  if (err || initialized)
   break;
 }

 up_read(&maps->lock);

 return err;
}
