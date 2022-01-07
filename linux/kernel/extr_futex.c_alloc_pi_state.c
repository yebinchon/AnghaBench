
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct futex_pi_state {int dummy; } ;
struct TYPE_2__ {struct futex_pi_state* pi_state_cache; } ;


 int WARN_ON (int) ;
 TYPE_1__* current ;

__attribute__((used)) static struct futex_pi_state *alloc_pi_state(void)
{
 struct futex_pi_state *pi_state = current->pi_state_cache;

 WARN_ON(!pi_state);
 current->pi_state_cache = ((void*)0);

 return pi_state;
}
