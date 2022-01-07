
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct selinux_state {int avc; TYPE_3__* ss; } ;
struct TYPE_4__ {int nprim; } ;
struct policydb {struct cond_node* cond_list; TYPE_2__** bool_val_to_struct; TYPE_1__ p_bools; } ;
struct cond_node {struct cond_node* next; } ;
struct TYPE_6__ {int latest_granting; int policy_rwlock; struct policydb policydb; } ;
struct TYPE_5__ {int state; } ;


 int AUDIT_MAC_CONFIG_CHANGE ;
 int EFAULT ;
 int GFP_ATOMIC ;
 int SYM_BOOLS ;
 int audit_context () ;
 int audit_get_loginuid (int ) ;
 int audit_get_sessionid (int ) ;
 int audit_log (int ,int ,int ,char*,int ,int,int,int ,int ) ;
 int avc_ss_reset (int ,int) ;
 int current ;
 int evaluate_cond_node (struct policydb*,struct cond_node*) ;
 int from_kuid (int *,int ) ;
 int init_user_ns ;
 int selinux_status_update_policyload (struct selinux_state*,int) ;
 int selinux_xfrm_notify_policyload () ;
 int selnl_notify_policyload (int) ;
 int sym_name (struct policydb*,int ,int) ;
 int write_lock_irq (int *) ;
 int write_unlock_irq (int *) ;

int security_set_bools(struct selinux_state *state, int len, int *values)
{
 struct policydb *policydb;
 int i, rc;
 int lenp, seqno = 0;
 struct cond_node *cur;

 write_lock_irq(&state->ss->policy_rwlock);

 policydb = &state->ss->policydb;

 rc = -EFAULT;
 lenp = policydb->p_bools.nprim;
 if (len != lenp)
  goto out;

 for (i = 0; i < len; i++) {
  if (!!values[i] != policydb->bool_val_to_struct[i]->state) {
   audit_log(audit_context(), GFP_ATOMIC,
    AUDIT_MAC_CONFIG_CHANGE,
    "bool=%s val=%d old_val=%d auid=%u ses=%u",
    sym_name(policydb, SYM_BOOLS, i),
    !!values[i],
    policydb->bool_val_to_struct[i]->state,
    from_kuid(&init_user_ns, audit_get_loginuid(current)),
    audit_get_sessionid(current));
  }
  if (values[i])
   policydb->bool_val_to_struct[i]->state = 1;
  else
   policydb->bool_val_to_struct[i]->state = 0;
 }

 for (cur = policydb->cond_list; cur; cur = cur->next) {
  rc = evaluate_cond_node(policydb, cur);
  if (rc)
   goto out;
 }

 seqno = ++state->ss->latest_granting;
 rc = 0;
out:
 write_unlock_irq(&state->ss->policy_rwlock);
 if (!rc) {
  avc_ss_reset(state->avc, seqno);
  selnl_notify_policyload(seqno);
  selinux_status_update_policyload(state, seqno);
  selinux_xfrm_notify_policyload();
 }
 return rc;
}
