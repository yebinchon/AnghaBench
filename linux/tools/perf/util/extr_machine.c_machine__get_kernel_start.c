
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map {unsigned long long start; } ;
struct machine {unsigned long long kernel_start; } ;


 int machine__is (struct machine*,char*) ;
 struct map* machine__kernel_map (struct machine*) ;
 int map__load (struct map*) ;

int machine__get_kernel_start(struct machine *machine)
{
 struct map *map = machine__kernel_map(machine);
 int err = 0;
 machine->kernel_start = 1ULL << 63;
 if (map) {
  err = map__load(map);





  if (!err && !machine__is(machine, "x86_64"))
   machine->kernel_start = map->start;
 }
 return err;
}
