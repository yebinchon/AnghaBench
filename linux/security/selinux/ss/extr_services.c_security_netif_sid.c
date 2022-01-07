
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct sidtab {int dummy; } ;
struct selinux_state {TYPE_2__* ss; } ;
struct policydb {struct ocontext** ocontexts; } ;
struct TYPE_3__ {int name; } ;
struct ocontext {scalar_t__* sid; int * context; struct ocontext* next; TYPE_1__ u; } ;
struct TYPE_4__ {int policy_rwlock; struct sidtab* sidtab; struct policydb policydb; } ;


 size_t OCON_NETIF ;
 scalar_t__ SECINITSID_NETIF ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int sidtab_context_to_sid (struct sidtab*,int *,scalar_t__*) ;
 scalar_t__ strcmp (char*,int ) ;

int security_netif_sid(struct selinux_state *state,
         char *name, u32 *if_sid)
{
 struct policydb *policydb;
 struct sidtab *sidtab;
 int rc = 0;
 struct ocontext *c;

 read_lock(&state->ss->policy_rwlock);

 policydb = &state->ss->policydb;
 sidtab = state->ss->sidtab;

 c = policydb->ocontexts[OCON_NETIF];
 while (c) {
  if (strcmp(name, c->u.name) == 0)
   break;
  c = c->next;
 }

 if (c) {
  if (!c->sid[0] || !c->sid[1]) {
   rc = sidtab_context_to_sid(sidtab,
        &c->context[0],
        &c->sid[0]);
   if (rc)
    goto out;
   rc = sidtab_context_to_sid(sidtab,
         &c->context[1],
         &c->sid[1]);
   if (rc)
    goto out;
  }
  *if_sid = c->sid[0];
 } else
  *if_sid = SECINITSID_NETIF;

out:
 read_unlock(&state->ss->policy_rwlock);
 return rc;
}
