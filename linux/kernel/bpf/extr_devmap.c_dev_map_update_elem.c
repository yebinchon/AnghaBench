
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct bpf_map {int dummy; } ;
struct TYPE_4__ {TYPE_1__* nsproxy; } ;
struct TYPE_3__ {int net_ns; } ;


 int __dev_map_update_elem (int ,struct bpf_map*,void*,void*,int ) ;
 TYPE_2__* current ;

__attribute__((used)) static int dev_map_update_elem(struct bpf_map *map, void *key, void *value,
          u64 map_flags)
{
 return __dev_map_update_elem(current->nsproxy->net_ns,
         map, key, value, map_flags);
}
