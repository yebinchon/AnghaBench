
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct futex_pi_state {int refcount; } ;


 int WARN_ON_ONCE (int) ;
 int refcount_inc_not_zero (int *) ;

__attribute__((used)) static void get_pi_state(struct futex_pi_state *pi_state)
{
 WARN_ON_ONCE(!refcount_inc_not_zero(&pi_state->refcount));
}
