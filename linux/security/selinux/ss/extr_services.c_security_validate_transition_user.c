
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct selinux_state {int dummy; } ;


 int security_compute_validatetrans (struct selinux_state*,int ,int ,int ,int ,int) ;

int security_validate_transition_user(struct selinux_state *state,
          u32 oldsid, u32 newsid, u32 tasksid,
          u16 tclass)
{
 return security_compute_validatetrans(state, oldsid, newsid, tasksid,
           tclass, 1);
}
