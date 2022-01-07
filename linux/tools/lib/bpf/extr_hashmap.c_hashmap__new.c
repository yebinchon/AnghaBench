
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hashmap {int dummy; } ;
typedef int hashmap_hash_fn ;
typedef int hashmap_equal_fn ;


 int ENOMEM ;
 struct hashmap* ERR_PTR (int ) ;
 int hashmap__init (struct hashmap*,int ,int ,void*) ;
 struct hashmap* malloc (int) ;

struct hashmap *hashmap__new(hashmap_hash_fn hash_fn,
        hashmap_equal_fn equal_fn,
        void *ctx)
{
 struct hashmap *map = malloc(sizeof(struct hashmap));

 if (!map)
  return ERR_PTR(-ENOMEM);
 hashmap__init(map, hash_fn, equal_fn, ctx);
 return map;
}
