
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct user_datum {int value; } ;
struct type_datum {int value; } ;
struct selinux_state {TYPE_4__* ss; int initialized; } ;
struct TYPE_11__ {int type; int role; int user; } ;
struct selinux_audit_rule {TYPE_5__ au_ctxt; int au_seqno; } ;
struct role_datum {int value; } ;
struct TYPE_9__ {int table; } ;
struct TYPE_8__ {int table; } ;
struct TYPE_7__ {int table; } ;
struct policydb {TYPE_3__ p_types; TYPE_2__ p_roles; TYPE_1__ p_users; } ;
struct TYPE_10__ {int policy_rwlock; int latest_granting; struct policydb policydb; } ;
 int Audit_equal ;
 int Audit_not_equal ;
 int EINVAL ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int GFP_ATOMIC ;
 int GFP_KERNEL ;
 int context_init (TYPE_5__*) ;
 void* hashtab_search (int ,char*) ;
 struct selinux_audit_rule* kzalloc (int,int ) ;
 int mls_from_string (struct policydb*,char*,TYPE_5__*,int ) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int selinux_audit_rule_free (struct selinux_audit_rule*) ;
 struct selinux_state selinux_state ;
 int strchr (char*,char) ;

int selinux_audit_rule_init(u32 field, u32 op, char *rulestr, void **vrule)
{
 struct selinux_state *state = &selinux_state;
 struct policydb *policydb = &state->ss->policydb;
 struct selinux_audit_rule *tmprule;
 struct role_datum *roledatum;
 struct type_datum *typedatum;
 struct user_datum *userdatum;
 struct selinux_audit_rule **rule = (struct selinux_audit_rule **)vrule;
 int rc = 0;

 *rule = ((void*)0);

 if (!state->initialized)
  return -EOPNOTSUPP;

 switch (field) {
 case 128:
 case 131:
 case 129:
 case 133:
 case 135:
 case 134:

  if (op != Audit_equal && op != Audit_not_equal)
   return -EINVAL;
  break;
 case 130:
 case 132:
 case 136:
 case 137:

  if (strchr(rulestr, '-'))
   return -EINVAL;
  break;
 default:

  return -EINVAL;
 }

 tmprule = kzalloc(sizeof(struct selinux_audit_rule), GFP_KERNEL);
 if (!tmprule)
  return -ENOMEM;

 context_init(&tmprule->au_ctxt);

 read_lock(&state->ss->policy_rwlock);

 tmprule->au_seqno = state->ss->latest_granting;

 switch (field) {
 case 128:
 case 133:
  rc = -EINVAL;
  userdatum = hashtab_search(policydb->p_users.table, rulestr);
  if (!userdatum)
   goto out;
  tmprule->au_ctxt.user = userdatum->value;
  break;
 case 131:
 case 135:
  rc = -EINVAL;
  roledatum = hashtab_search(policydb->p_roles.table, rulestr);
  if (!roledatum)
   goto out;
  tmprule->au_ctxt.role = roledatum->value;
  break;
 case 129:
 case 134:
  rc = -EINVAL;
  typedatum = hashtab_search(policydb->p_types.table, rulestr);
  if (!typedatum)
   goto out;
  tmprule->au_ctxt.type = typedatum->value;
  break;
 case 130:
 case 132:
 case 136:
 case 137:
  rc = mls_from_string(policydb, rulestr, &tmprule->au_ctxt,
         GFP_ATOMIC);
  if (rc)
   goto out;
  break;
 }
 rc = 0;
out:
 read_unlock(&state->ss->policy_rwlock);

 if (rc) {
  selinux_audit_rule_free(tmprule);
  tmprule = ((void*)0);
 }

 *rule = tmprule;

 return rc;
}
