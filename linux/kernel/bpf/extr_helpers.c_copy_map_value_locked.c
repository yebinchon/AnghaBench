
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_spin_lock {int dummy; } ;
struct bpf_map {int spin_lock_off; } ;


 int ____bpf_spin_lock (struct bpf_spin_lock*) ;
 int ____bpf_spin_unlock (struct bpf_spin_lock*) ;
 int copy_map_value (struct bpf_map*,void*,void*) ;
 int preempt_disable () ;
 int preempt_enable () ;

void copy_map_value_locked(struct bpf_map *map, void *dst, void *src,
      bool lock_src)
{
 struct bpf_spin_lock *lock;

 if (lock_src)
  lock = src + map->spin_lock_off;
 else
  lock = dst + map->spin_lock_off;
 preempt_disable();
 ____bpf_spin_lock(lock);
 copy_map_value(map, dst, src);
 ____bpf_spin_unlock(lock);
 preempt_enable();
}
