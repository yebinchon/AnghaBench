
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_map {int dummy; } ;


 int __stack_map_get (struct bpf_map*,void*,int) ;

__attribute__((used)) static int stack_map_peek_elem(struct bpf_map *map, void *value)
{
 return __stack_map_get(map, value, 0);
}
