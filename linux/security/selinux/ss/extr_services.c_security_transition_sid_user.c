
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct selinux_state {int dummy; } ;


 int AVTAB_TRANSITION ;
 int security_compute_sid (struct selinux_state*,int ,int ,int ,int ,char const*,int *,int) ;

int security_transition_sid_user(struct selinux_state *state,
     u32 ssid, u32 tsid, u16 tclass,
     const char *objname, u32 *out_sid)
{
 return security_compute_sid(state, ssid, tsid, tclass,
        AVTAB_TRANSITION,
        objname, out_sid, 0);
}
