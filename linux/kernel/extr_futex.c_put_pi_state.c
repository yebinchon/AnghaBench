
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct task_struct {int pi_lock; } ;
struct TYPE_3__ {int wait_lock; } ;
struct futex_pi_state {int refcount; struct task_struct* owner; TYPE_1__ pi_mutex; int list; } ;
struct TYPE_4__ {struct futex_pi_state* pi_state_cache; } ;


 TYPE_2__* current ;
 int kfree (struct futex_pi_state*) ;
 int list_del_init (int *) ;
 int raw_spin_lock (int *) ;
 int raw_spin_lock_irq (int *) ;
 int raw_spin_unlock (int *) ;
 int raw_spin_unlock_irq (int *) ;
 int refcount_dec_and_test (int *) ;
 int refcount_set (int *,int) ;
 int rt_mutex_proxy_unlock (TYPE_1__*,struct task_struct*) ;

__attribute__((used)) static void put_pi_state(struct futex_pi_state *pi_state)
{
 if (!pi_state)
  return;

 if (!refcount_dec_and_test(&pi_state->refcount))
  return;





 if (pi_state->owner) {
  struct task_struct *owner;

  raw_spin_lock_irq(&pi_state->pi_mutex.wait_lock);
  owner = pi_state->owner;
  if (owner) {
   raw_spin_lock(&owner->pi_lock);
   list_del_init(&pi_state->list);
   raw_spin_unlock(&owner->pi_lock);
  }
  rt_mutex_proxy_unlock(&pi_state->pi_mutex, owner);
  raw_spin_unlock_irq(&pi_state->pi_mutex.wait_lock);
 }

 if (current->pi_state_cache) {
  kfree(pi_state);
 } else {





  pi_state->owner = ((void*)0);
  refcount_set(&pi_state->refcount, 1);
  current->pi_state_cache = pi_state;
 }
}
