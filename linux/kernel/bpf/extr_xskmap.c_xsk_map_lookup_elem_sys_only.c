
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_map {int dummy; } ;


 int EOPNOTSUPP ;
 void* ERR_PTR (int ) ;

__attribute__((used)) static void *xsk_map_lookup_elem_sys_only(struct bpf_map *map, void *key)
{
 return ERR_PTR(-EOPNOTSUPP);
}
