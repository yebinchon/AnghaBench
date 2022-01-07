
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int mg; } ;
struct map {int dummy; } ;


 int map_groups__fixup_overlappings (int ,struct map*,int ) ;
 int map_groups__insert (int ,struct map*) ;
 int stderr ;
 int unwind__prepare_access (int ,struct map*,int *) ;

int thread__insert_map(struct thread *thread, struct map *map)
{
 int ret;

 ret = unwind__prepare_access(thread->mg, map, ((void*)0));
 if (ret)
  return ret;

 map_groups__fixup_overlappings(thread->mg, map, stderr);
 map_groups__insert(thread->mg, map);

 return 0;
}
