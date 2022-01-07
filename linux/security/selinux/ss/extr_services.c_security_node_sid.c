
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct sidtab {int dummy; } ;
struct selinux_state {TYPE_4__* ss; } ;
struct policydb {struct ocontext** ocontexts; } ;
struct TYPE_6__ {int mask; int addr; } ;
struct TYPE_5__ {int addr; int mask; } ;
struct TYPE_7__ {TYPE_2__ node6; TYPE_1__ node; } ;
struct ocontext {int* sid; int * context; struct ocontext* next; TYPE_3__ u; } ;
struct TYPE_8__ {int policy_rwlock; struct sidtab* sidtab; struct policydb policydb; } ;




 int EINVAL ;
 size_t OCON_NODE ;
 size_t OCON_NODE6 ;
 int SECINITSID_NODE ;
 int match_ipv6_addrmask (void*,int ,int ) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int sidtab_context_to_sid (struct sidtab*,int *,int*) ;

int security_node_sid(struct selinux_state *state,
        u16 domain,
        void *addrp,
        u32 addrlen,
        u32 *out_sid)
{
 struct policydb *policydb;
 struct sidtab *sidtab;
 int rc;
 struct ocontext *c;

 read_lock(&state->ss->policy_rwlock);

 policydb = &state->ss->policydb;
 sidtab = state->ss->sidtab;

 switch (domain) {
 case 129: {
  u32 addr;

  rc = -EINVAL;
  if (addrlen != sizeof(u32))
   goto out;

  addr = *((u32 *)addrp);

  c = policydb->ocontexts[OCON_NODE];
  while (c) {
   if (c->u.node.addr == (addr & c->u.node.mask))
    break;
   c = c->next;
  }
  break;
 }

 case 128:
  rc = -EINVAL;
  if (addrlen != sizeof(u64) * 2)
   goto out;
  c = policydb->ocontexts[OCON_NODE6];
  while (c) {
   if (match_ipv6_addrmask(addrp, c->u.node6.addr,
      c->u.node6.mask))
    break;
   c = c->next;
  }
  break;

 default:
  rc = 0;
  *out_sid = SECINITSID_NODE;
  goto out;
 }

 if (c) {
  if (!c->sid[0]) {
   rc = sidtab_context_to_sid(sidtab,
         &c->context[0],
         &c->sid[0]);
   if (rc)
    goto out;
  }
  *out_sid = c->sid[0];
 } else {
  *out_sid = SECINITSID_NODE;
 }

 rc = 0;
out:
 read_unlock(&state->ss->policy_rwlock);
 return rc;
}
