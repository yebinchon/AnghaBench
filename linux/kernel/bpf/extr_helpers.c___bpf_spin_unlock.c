
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_spin_lock {int dummy; } ;
typedef int atomic_t ;


 int atomic_set_release (int *,int ) ;

__attribute__((used)) static inline void __bpf_spin_unlock(struct bpf_spin_lock *lock)
{
 atomic_t *l = (void *)lock;

 atomic_set_release(l, 0);
}
