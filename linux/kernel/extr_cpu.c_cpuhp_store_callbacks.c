
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int (* single ) (unsigned int) ;} ;
struct TYPE_3__ {int (* single ) (unsigned int) ;} ;
struct cpuhp_step {char const* name; int multi_instance; int list; TYPE_2__ teardown; TYPE_1__ startup; } ;
typedef enum cpuhp_state { ____Placeholder_cpuhp_state } cpuhp_state ;


 int CPUHP_AP_ONLINE_DYN ;
 int CPUHP_BP_PREPARE_DYN ;
 int EBUSY ;
 int INIT_HLIST_HEAD (int *) ;
 struct cpuhp_step* cpuhp_get_step (int) ;
 int cpuhp_reserve_state (int) ;

__attribute__((used)) static int cpuhp_store_callbacks(enum cpuhp_state state, const char *name,
     int (*startup)(unsigned int cpu),
     int (*teardown)(unsigned int cpu),
     bool multi_instance)
{

 struct cpuhp_step *sp;
 int ret = 0;
 if (name && (state == CPUHP_AP_ONLINE_DYN ||
       state == CPUHP_BP_PREPARE_DYN)) {
  ret = cpuhp_reserve_state(state);
  if (ret < 0)
   return ret;
  state = ret;
 }
 sp = cpuhp_get_step(state);
 if (name && sp->name)
  return -EBUSY;

 sp->startup.single = startup;
 sp->teardown.single = teardown;
 sp->name = name;
 sp->multi_instance = multi_instance;
 INIT_HLIST_HEAD(&sp->list);
 return ret;
}
