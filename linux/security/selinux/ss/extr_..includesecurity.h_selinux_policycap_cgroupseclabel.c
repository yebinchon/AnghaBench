
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct selinux_state {int* policycap; } ;


 size_t POLICYDB_CAPABILITY_CGROUPSECLABEL ;
 struct selinux_state selinux_state ;

__attribute__((used)) static inline bool selinux_policycap_cgroupseclabel(void)
{
 struct selinux_state *state = &selinux_state;

 return state->policycap[POLICYDB_CAPABILITY_CGROUPSECLABEL];
}
