
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum bpf_map_type { ____Placeholder_bpf_map_type } bpf_map_type ;


 int BPF_MAP_TYPE_ARRAY_OF_MAPS ;
 int BPF_MAP_TYPE_HASH_OF_MAPS ;

__attribute__((used)) static bool bpf_map_type__is_map_in_map(enum bpf_map_type type)
{
 if (type == BPF_MAP_TYPE_ARRAY_OF_MAPS ||
     type == BPF_MAP_TYPE_HASH_OF_MAPS)
  return 1;
 return 0;
}
