
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef enum cpuhp_state { ____Placeholder_cpuhp_state } cpuhp_state ;
struct TYPE_3__ {void* single; } ;
struct TYPE_4__ {TYPE_1__ teardown; } ;


 TYPE_2__* cpuhp_get_step (int) ;

__attribute__((used)) static void *cpuhp_get_teardown_cb(enum cpuhp_state state)
{
 return cpuhp_get_step(state)->teardown.single;
}
