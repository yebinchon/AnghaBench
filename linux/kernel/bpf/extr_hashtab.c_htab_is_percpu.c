
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ map_type; } ;
struct bpf_htab {TYPE_1__ map; } ;


 scalar_t__ BPF_MAP_TYPE_LRU_PERCPU_HASH ;
 scalar_t__ BPF_MAP_TYPE_PERCPU_HASH ;

__attribute__((used)) static bool htab_is_percpu(const struct bpf_htab *htab)
{
 return htab->map.map_type == BPF_MAP_TYPE_PERCPU_HASH ||
  htab->map.map_type == BPF_MAP_TYPE_LRU_PERCPU_HASH;
}
