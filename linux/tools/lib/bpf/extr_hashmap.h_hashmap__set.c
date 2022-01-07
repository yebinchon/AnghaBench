
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hashmap {int dummy; } ;


 int HASHMAP_SET ;
 int hashmap__insert (struct hashmap*,void const*,void*,int ,void const**,void**) ;

__attribute__((used)) static inline int hashmap__set(struct hashmap *map,
          const void *key, void *value,
          const void **old_key, void **old_value)
{
 return hashmap__insert(map, key, value, HASHMAP_SET,
          old_key, old_value);
}
