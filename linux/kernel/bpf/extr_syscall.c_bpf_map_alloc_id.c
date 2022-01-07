
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_map {int id; } ;


 int ENOSPC ;
 int GFP_ATOMIC ;
 int GFP_KERNEL ;
 int INT_MAX ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int idr_alloc_cyclic (int *,struct bpf_map*,int,int ,int ) ;
 int idr_preload (int ) ;
 int idr_preload_end () ;
 int map_idr ;
 int map_idr_lock ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int bpf_map_alloc_id(struct bpf_map *map)
{
 int id;

 idr_preload(GFP_KERNEL);
 spin_lock_bh(&map_idr_lock);
 id = idr_alloc_cyclic(&map_idr, map, 1, INT_MAX, GFP_ATOMIC);
 if (id > 0)
  map->id = id;
 spin_unlock_bh(&map_idr_lock);
 idr_preload_end();

 if (WARN_ON_ONCE(!id))
  return -ENOSPC;

 return id > 0 ? 0 : id;
}
