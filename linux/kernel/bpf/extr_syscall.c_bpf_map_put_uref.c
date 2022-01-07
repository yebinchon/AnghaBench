
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bpf_map {TYPE_1__* ops; int usercnt; } ;
struct TYPE_2__ {int (* map_release_uref ) (struct bpf_map*) ;} ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int stub1 (struct bpf_map*) ;

__attribute__((used)) static void bpf_map_put_uref(struct bpf_map *map)
{
 if (atomic_dec_and_test(&map->usercnt)) {
  if (map->ops->map_release_uref)
   map->ops->map_release_uref(map);
 }
}
