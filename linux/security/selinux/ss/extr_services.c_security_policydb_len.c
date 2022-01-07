
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct selinux_state {TYPE_1__* ss; } ;
struct policydb {size_t len; } ;
struct TYPE_2__ {int policy_rwlock; struct policydb policydb; } ;


 int read_lock (int *) ;
 int read_unlock (int *) ;

size_t security_policydb_len(struct selinux_state *state)
{
 struct policydb *p = &state->ss->policydb;
 size_t len;

 read_lock(&state->ss->policy_rwlock);
 len = p->len;
 read_unlock(&state->ss->policy_rwlock);

 return len;
}
