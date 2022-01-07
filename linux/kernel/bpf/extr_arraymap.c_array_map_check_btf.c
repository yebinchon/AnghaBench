
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct btf_type {int info; } ;
struct btf {int dummy; } ;
struct bpf_map {scalar_t__ map_type; int max_entries; } ;


 scalar_t__ BPF_MAP_TYPE_ARRAY ;
 scalar_t__ BTF_INFO_KIND (int ) ;
 int BTF_INT_BITS (int ) ;
 scalar_t__ BTF_INT_OFFSET (int ) ;
 scalar_t__ BTF_KIND_DATASEC ;
 scalar_t__ BTF_KIND_INT ;
 int EINVAL ;
 scalar_t__ btf_type_is_void (struct btf_type const*) ;

__attribute__((used)) static int array_map_check_btf(const struct bpf_map *map,
          const struct btf *btf,
          const struct btf_type *key_type,
          const struct btf_type *value_type)
{
 u32 int_data;


 if (btf_type_is_void(key_type)) {
  if (map->map_type != BPF_MAP_TYPE_ARRAY ||
      map->max_entries != 1)
   return -EINVAL;

  if (BTF_INFO_KIND(value_type->info) != BTF_KIND_DATASEC)
   return -EINVAL;

  return 0;
 }

 if (BTF_INFO_KIND(key_type->info) != BTF_KIND_INT)
  return -EINVAL;

 int_data = *(u32 *)(key_type + 1);



 if (BTF_INT_BITS(int_data) != 32 || BTF_INT_OFFSET(int_data))
  return -EINVAL;

 return 0;
}
