
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_map {scalar_t__ map_type; scalar_t__ key_size; scalar_t__ value_size; scalar_t__ map_flags; scalar_t__ max_entries; } ;



bool bpf_map_meta_equal(const struct bpf_map *meta0,
   const struct bpf_map *meta1)
{

 return meta0->map_type == meta1->map_type &&
  meta0->key_size == meta1->key_size &&
  meta0->value_size == meta1->value_size &&
  meta0->map_flags == meta1->map_flags &&
  meta0->max_entries == meta1->max_entries;
}
