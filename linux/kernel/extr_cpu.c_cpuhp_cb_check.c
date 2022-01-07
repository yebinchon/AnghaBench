
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum cpuhp_state { ____Placeholder_cpuhp_state } cpuhp_state ;


 int CPUHP_OFFLINE ;
 int CPUHP_ONLINE ;
 int EINVAL ;

__attribute__((used)) static int cpuhp_cb_check(enum cpuhp_state state)
{
 if (state <= CPUHP_OFFLINE || state >= CPUHP_ONLINE)
  return -EINVAL;
 return 0;
}
