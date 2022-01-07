
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct selinux_state {TYPE_1__* ss; } ;
struct policydb {int policycaps; } ;
struct TYPE_2__ {int policy_rwlock; struct policydb policydb; } ;


 int ebitmap_get_bit (int *,unsigned int) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;

int security_policycap_supported(struct selinux_state *state,
     unsigned int req_cap)
{
 struct policydb *policydb = &state->ss->policydb;
 int rc;

 read_lock(&state->ss->policy_rwlock);
 rc = ebitmap_get_bit(&policydb->policycaps, req_cap);
 read_unlock(&state->ss->policy_rwlock);

 return rc;
}
