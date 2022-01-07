
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_spin_lock {int dummy; } ;
typedef int atomic_t ;


 int BUILD_BUG_ON (int) ;
 int VAL ;
 int atomic_cond_read_relaxed (int *,int) ;
 scalar_t__ atomic_xchg (int *,int) ;

__attribute__((used)) static inline void __bpf_spin_lock(struct bpf_spin_lock *lock)
{
 atomic_t *l = (void *)lock;

 BUILD_BUG_ON(sizeof(*l) != sizeof(*lock));
 do {
  atomic_cond_read_relaxed(l, !VAL);
 } while (atomic_xchg(l, 1));
}
