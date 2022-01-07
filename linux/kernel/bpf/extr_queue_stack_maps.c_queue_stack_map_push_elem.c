
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {size_t value_size; } ;
struct bpf_queue_stack {size_t tail; size_t size; size_t head; int lock; TYPE_1__ map; int * elements; } ;
struct bpf_map {int dummy; } ;


 int BPF_EXIST ;
 int BPF_NOEXIST ;
 int E2BIG ;
 int EINVAL ;
 struct bpf_queue_stack* bpf_queue_stack (struct bpf_map*) ;
 int memcpy (void*,void*,size_t) ;
 scalar_t__ queue_stack_map_is_full (struct bpf_queue_stack*) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int queue_stack_map_push_elem(struct bpf_map *map, void *value,
         u64 flags)
{
 struct bpf_queue_stack *qs = bpf_queue_stack(map);
 unsigned long irq_flags;
 int err = 0;
 void *dst;




 bool replace = (flags & BPF_EXIST);


 if (flags & BPF_NOEXIST || flags > BPF_EXIST)
  return -EINVAL;

 raw_spin_lock_irqsave(&qs->lock, irq_flags);

 if (queue_stack_map_is_full(qs)) {
  if (!replace) {
   err = -E2BIG;
   goto out;
  }

  if (unlikely(++qs->tail >= qs->size))
   qs->tail = 0;
 }

 dst = &qs->elements[qs->head * qs->map.value_size];
 memcpy(dst, value, qs->map.value_size);

 if (unlikely(++qs->head >= qs->size))
  qs->head = 0;

out:
 raw_spin_unlock_irqrestore(&qs->lock, irq_flags);
 return err;
}
