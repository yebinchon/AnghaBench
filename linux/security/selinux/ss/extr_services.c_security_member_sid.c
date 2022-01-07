
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct selinux_state {int dummy; } ;


 int AVTAB_MEMBER ;
 int security_compute_sid (struct selinux_state*,int ,int ,int ,int ,int *,int *,int) ;

int security_member_sid(struct selinux_state *state,
   u32 ssid,
   u32 tsid,
   u16 tclass,
   u32 *out_sid)
{
 return security_compute_sid(state, ssid, tsid, tclass,
        AVTAB_MEMBER, ((void*)0),
        out_sid, 0);
}
