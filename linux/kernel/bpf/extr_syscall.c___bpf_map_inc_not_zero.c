
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_map {int usercnt; int refcnt; } ;


 int BPF_MAX_REFCNT ;
 int EBUSY ;
 int ENOENT ;
 struct bpf_map* ERR_PTR (int ) ;
 int __bpf_map_put (struct bpf_map*,int) ;
 int atomic_fetch_add_unless (int *,int,int ) ;
 int atomic_inc (int *) ;

__attribute__((used)) static struct bpf_map *__bpf_map_inc_not_zero(struct bpf_map *map,
           bool uref)
{
 int refold;

 refold = atomic_fetch_add_unless(&map->refcnt, 1, 0);

 if (refold >= BPF_MAX_REFCNT) {
  __bpf_map_put(map, 0);
  return ERR_PTR(-EBUSY);
 }

 if (!refold)
  return ERR_PTR(-ENOENT);

 if (uref)
  atomic_inc(&map->usercnt);

 return map;
}
