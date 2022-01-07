
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct selinux_state {TYPE_2__* ss; } ;
struct TYPE_3__ {int reject_unknown; } ;
struct TYPE_4__ {TYPE_1__ policydb; } ;



int security_get_reject_unknown(struct selinux_state *state)
{
 return state->ss->policydb.reject_unknown;
}
