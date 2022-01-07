
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_map {int usercnt; int refcnt; } ;


 scalar_t__ BPF_MAX_REFCNT ;
 int EBUSY ;
 struct bpf_map* ERR_PTR (int ) ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_inc_return (int *) ;

struct bpf_map *bpf_map_inc(struct bpf_map *map, bool uref)
{
 if (atomic_inc_return(&map->refcnt) > BPF_MAX_REFCNT) {
  atomic_dec(&map->refcnt);
  return ERR_PTR(-EBUSY);
 }
 if (uref)
  atomic_inc(&map->usercnt);
 return map;
}
