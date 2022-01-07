
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct percpu_ref {int confirm_switch; } ;


 int percpu_ref_switch_to_atomic (struct percpu_ref*,int *) ;
 int percpu_ref_switch_waitq ;
 int wait_event (int ,int) ;

void percpu_ref_switch_to_atomic_sync(struct percpu_ref *ref)
{
 percpu_ref_switch_to_atomic(ref, ((void*)0));
 wait_event(percpu_ref_switch_waitq, !ref->confirm_switch);
}
