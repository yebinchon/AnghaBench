
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map_iter {void* key; } ;
struct bpf_map {int key_size; } ;


 int GFP_KERNEL ;
 int __GFP_NOWARN ;
 void* kzalloc (int,int) ;
 int map_iter_free (struct map_iter*) ;

__attribute__((used)) static struct map_iter *map_iter_alloc(struct bpf_map *map)
{
 struct map_iter *iter;

 iter = kzalloc(sizeof(*iter), GFP_KERNEL | __GFP_NOWARN);
 if (!iter)
  goto error;

 iter->key = kzalloc(map->key_size, GFP_KERNEL | __GFP_NOWARN);
 if (!iter->key)
  goto error;

 return iter;

error:
 map_iter_free(iter);
 return ((void*)0);
}
