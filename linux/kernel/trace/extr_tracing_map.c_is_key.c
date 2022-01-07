
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tracing_map {unsigned int n_keys; unsigned int* key_idx; } ;



__attribute__((used)) static bool is_key(struct tracing_map *map, unsigned int field_idx)
{
 unsigned int i;

 for (i = 0; i < map->n_keys; i++)
  if (map->key_idx[i] == field_idx)
   return 1;
 return 0;
}
