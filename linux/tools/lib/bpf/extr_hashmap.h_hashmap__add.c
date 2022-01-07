
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hashmap {int dummy; } ;


 int HASHMAP_ADD ;
 int hashmap__insert (struct hashmap*,void const*,void*,int ,int *,int *) ;

__attribute__((used)) static inline int hashmap__add(struct hashmap *map,
          const void *key, void *value)
{
 return hashmap__insert(map, key, value, HASHMAP_ADD, ((void*)0), ((void*)0));
}
