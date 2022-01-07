
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_map {int dummy; } ;


 struct bpf_map* __bpf_map_inc_not_zero (struct bpf_map*,int) ;
 int map_idr_lock ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

struct bpf_map *bpf_map_inc_not_zero(struct bpf_map *map, bool uref)
{
 spin_lock_bh(&map_idr_lock);
 map = __bpf_map_inc_not_zero(map, uref);
 spin_unlock_bh(&map_idr_lock);

 return map;
}
