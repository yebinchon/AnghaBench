
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct selinux_state {int dummy; } ;
struct qstr {int * name; } ;


 int AVTAB_TRANSITION ;
 int security_compute_sid (struct selinux_state*,int ,int ,int ,int ,int *,int *,int) ;

int security_transition_sid(struct selinux_state *state,
       u32 ssid, u32 tsid, u16 tclass,
       const struct qstr *qstr, u32 *out_sid)
{
 return security_compute_sid(state, ssid, tsid, tclass,
        AVTAB_TRANSITION,
        qstr ? qstr->name : ((void*)0), out_sid, 1);
}
