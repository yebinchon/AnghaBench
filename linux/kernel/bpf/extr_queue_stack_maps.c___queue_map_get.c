
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t value_size; } ;
struct bpf_queue_stack {size_t tail; size_t size; int lock; TYPE_1__ map; int * elements; } ;
struct bpf_map {int dummy; } ;


 int ENOENT ;
 struct bpf_queue_stack* bpf_queue_stack (struct bpf_map*) ;
 int memcpy (void*,void*,size_t) ;
 int memset (void*,int ,size_t) ;
 scalar_t__ queue_stack_map_is_empty (struct bpf_queue_stack*) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int __queue_map_get(struct bpf_map *map, void *value, bool delete)
{
 struct bpf_queue_stack *qs = bpf_queue_stack(map);
 unsigned long flags;
 int err = 0;
 void *ptr;

 raw_spin_lock_irqsave(&qs->lock, flags);

 if (queue_stack_map_is_empty(qs)) {
  memset(value, 0, qs->map.value_size);
  err = -ENOENT;
  goto out;
 }

 ptr = &qs->elements[qs->tail * qs->map.value_size];
 memcpy(value, ptr, qs->map.value_size);

 if (delete) {
  if (unlikely(++qs->tail >= qs->size))
   qs->tail = 0;
 }

out:
 raw_spin_unlock_irqrestore(&qs->lock, flags);
 return err;
}
