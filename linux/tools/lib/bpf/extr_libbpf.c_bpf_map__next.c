
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_object {struct bpf_map* maps; } ;
struct bpf_map {int dummy; } ;


 struct bpf_map* __bpf_map__iter (struct bpf_map const*,struct bpf_object const*,int) ;

struct bpf_map *
bpf_map__next(const struct bpf_map *prev, const struct bpf_object *obj)
{
 if (prev == ((void*)0))
  return obj->maps;

 return __bpf_map__iter(prev, obj, 1);
}
