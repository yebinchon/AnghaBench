
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct selinux_state {TYPE_1__* ss; } ;
struct policydb {int mls_enabled; } ;
struct TYPE_2__ {struct policydb policydb; } ;



int security_mls_enabled(struct selinux_state *state)
{
 struct policydb *p = &state->ss->policydb;

 return p->mls_enabled;
}
