
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ __u32 ;


 scalar_t__ BPF_MAP_TYPE_LRU_PERCPU_HASH ;
 scalar_t__ BPF_MAP_TYPE_PERCPU_ARRAY ;
 scalar_t__ BPF_MAP_TYPE_PERCPU_CGROUP_STORAGE ;
 scalar_t__ BPF_MAP_TYPE_PERCPU_HASH ;

__attribute__((used)) static bool map_is_per_cpu(__u32 type)
{
 return type == BPF_MAP_TYPE_PERCPU_HASH ||
        type == BPF_MAP_TYPE_PERCPU_ARRAY ||
        type == BPF_MAP_TYPE_LRU_PERCPU_HASH ||
        type == BPF_MAP_TYPE_PERCPU_CGROUP_STORAGE;
}
