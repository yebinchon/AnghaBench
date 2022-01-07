
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ __u32 ;


 scalar_t__ BPF_MAP_TYPE_ARRAY_OF_MAPS ;
 scalar_t__ BPF_MAP_TYPE_HASH_OF_MAPS ;

__attribute__((used)) static bool map_is_map_of_maps(__u32 type)
{
 return type == BPF_MAP_TYPE_ARRAY_OF_MAPS ||
        type == BPF_MAP_TYPE_HASH_OF_MAPS;
}
