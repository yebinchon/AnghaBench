
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct percpu_ref {int percpu_count_ptr; scalar_t__ force_atomic; int confirm_switch; } ;
typedef int percpu_ref_func_t ;


 int __PERCPU_REF_DEAD ;
 int __percpu_ref_switch_to_atomic (struct percpu_ref*,int *) ;
 int __percpu_ref_switch_to_percpu (struct percpu_ref*) ;
 int lockdep_assert_held (int *) ;
 int percpu_ref_switch_lock ;
 int percpu_ref_switch_waitq ;
 int wait_event_lock_irq (int ,int,int ) ;

__attribute__((used)) static void __percpu_ref_switch_mode(struct percpu_ref *ref,
         percpu_ref_func_t *confirm_switch)
{
 lockdep_assert_held(&percpu_ref_switch_lock);






 wait_event_lock_irq(percpu_ref_switch_waitq, !ref->confirm_switch,
       percpu_ref_switch_lock);

 if (ref->force_atomic || (ref->percpu_count_ptr & __PERCPU_REF_DEAD))
  __percpu_ref_switch_to_atomic(ref, confirm_switch);
 else
  __percpu_ref_switch_to_percpu(ref);
}
