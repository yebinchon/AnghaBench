
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct selinux_state {TYPE_4__* ss; } ;
struct TYPE_6__ {struct mls_level* level; } ;
struct TYPE_7__ {TYPE_2__ range; int type; int role; int user; } ;
struct selinux_audit_rule {scalar_t__ au_seqno; TYPE_3__ au_ctxt; } ;
struct mls_level {int dummy; } ;
struct TYPE_5__ {struct mls_level* level; } ;
struct context {TYPE_1__ range; int type; int role; int user; } ;
struct TYPE_8__ {scalar_t__ latest_granting; int policy_rwlock; int sidtab; } ;
 int ENOENT ;
 int ESTALE ;
 int WARN_ONCE (int,char*,...) ;
 int mls_level_dom (struct mls_level*,struct mls_level*) ;
 int mls_level_eq (struct mls_level*,struct mls_level*) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 struct selinux_state selinux_state ;
 struct context* sidtab_search (int ,int) ;
 scalar_t__ unlikely (int) ;

int selinux_audit_rule_match(u32 sid, u32 field, u32 op, void *vrule)
{
 struct selinux_state *state = &selinux_state;
 struct context *ctxt;
 struct mls_level *level;
 struct selinux_audit_rule *rule = vrule;
 int match = 0;

 if (unlikely(!rule)) {
  WARN_ONCE(1, "selinux_audit_rule_match: missing rule\n");
  return -ENOENT;
 }

 read_lock(&state->ss->policy_rwlock);

 if (rule->au_seqno < state->ss->latest_granting) {
  match = -ESTALE;
  goto out;
 }

 ctxt = sidtab_search(state->ss->sidtab, sid);
 if (unlikely(!ctxt)) {
  WARN_ONCE(1, "selinux_audit_rule_match: unrecognized SID %d\n",
     sid);
  match = -ENOENT;
  goto out;
 }



 switch (field) {
 case 134:
 case 139:
  switch (op) {
  case 133:
   match = (ctxt->user == rule->au_ctxt.user);
   break;
  case 128:
   match = (ctxt->user != rule->au_ctxt.user);
   break;
  }
  break;
 case 137:
 case 141:
  switch (op) {
  case 133:
   match = (ctxt->role == rule->au_ctxt.role);
   break;
  case 128:
   match = (ctxt->role != rule->au_ctxt.role);
   break;
  }
  break;
 case 135:
 case 140:
  switch (op) {
  case 133:
   match = (ctxt->type == rule->au_ctxt.type);
   break;
  case 128:
   match = (ctxt->type != rule->au_ctxt.type);
   break;
  }
  break;
 case 136:
 case 138:
 case 142:
 case 143:
  level = ((field == 136 ||
     field == 142) ?
    &ctxt->range.level[0] : &ctxt->range.level[1]);
  switch (op) {
  case 133:
   match = mls_level_eq(&rule->au_ctxt.range.level[0],
          level);
   break;
  case 128:
   match = !mls_level_eq(&rule->au_ctxt.range.level[0],
           level);
   break;
  case 129:
   match = (mls_level_dom(&rule->au_ctxt.range.level[0],
            level) &&
     !mls_level_eq(&rule->au_ctxt.range.level[0],
            level));
   break;
  case 130:
   match = mls_level_dom(&rule->au_ctxt.range.level[0],
           level);
   break;
  case 131:
   match = (mls_level_dom(level,
           &rule->au_ctxt.range.level[0]) &&
     !mls_level_eq(level,
            &rule->au_ctxt.range.level[0]));
   break;
  case 132:
   match = mls_level_dom(level,
           &rule->au_ctxt.range.level[0]);
   break;
  }
 }

out:
 read_unlock(&state->ss->policy_rwlock);
 return match;
}
