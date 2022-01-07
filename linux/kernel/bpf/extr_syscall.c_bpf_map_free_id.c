
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_map {scalar_t__ id; } ;


 int __acquire (int *) ;
 int __release (int *) ;
 int idr_remove (int *,scalar_t__) ;
 int map_idr ;
 int map_idr_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void bpf_map_free_id(struct bpf_map *map, bool do_idr_lock)
{
 unsigned long flags;






 if (!map->id)
  return;

 if (do_idr_lock)
  spin_lock_irqsave(&map_idr_lock, flags);
 else
  __acquire(&map_idr_lock);

 idr_remove(&map_idr, map->id);
 map->id = 0;

 if (do_idr_lock)
  spin_unlock_irqrestore(&map_idr_lock, flags);
 else
  __release(&map_idr_lock);
}
