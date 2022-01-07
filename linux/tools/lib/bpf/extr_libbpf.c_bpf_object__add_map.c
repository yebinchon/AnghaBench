
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_object {int nr_maps; int maps_cap; struct bpf_map* maps; } ;
struct bpf_map {int fd; int inner_map_fd; } ;


 int ENOMEM ;
 struct bpf_map* ERR_PTR (int ) ;
 size_t max (size_t,int) ;
 int memset (struct bpf_map*,int ,int) ;
 int pr_warning (char*) ;
 struct bpf_map* realloc (struct bpf_map*,size_t) ;

__attribute__((used)) static struct bpf_map *bpf_object__add_map(struct bpf_object *obj)
{
 struct bpf_map *new_maps;
 size_t new_cap;
 int i;

 if (obj->nr_maps < obj->maps_cap)
  return &obj->maps[obj->nr_maps++];

 new_cap = max((size_t)4, obj->maps_cap * 3 / 2);
 new_maps = realloc(obj->maps, new_cap * sizeof(*obj->maps));
 if (!new_maps) {
  pr_warning("alloc maps for object failed\n");
  return ERR_PTR(-ENOMEM);
 }

 obj->maps_cap = new_cap;
 obj->maps = new_maps;


 memset(obj->maps + obj->nr_maps, 0,
        (obj->maps_cap - obj->nr_maps) * sizeof(*obj->maps));




 for (i = obj->nr_maps; i < obj->maps_cap; i++) {
  obj->maps[i].fd = -1;
  obj->maps[i].inner_map_fd = -1;
 }

 return &obj->maps[obj->nr_maps++];
}
