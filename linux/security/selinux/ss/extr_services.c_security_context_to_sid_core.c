
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sidtab {int dummy; } ;
struct selinux_state {TYPE_1__* ss; int initialized; } ;
struct policydb {int dummy; } ;
struct context {char* str; scalar_t__ len; } ;
typedef int gfp_t ;
struct TYPE_2__ {int policy_rwlock; struct sidtab* sidtab; struct policydb policydb; } ;


 int EINVAL ;
 int ENOMEM ;
 int SECINITSID_KERNEL ;
 int SECINITSID_NUM ;
 int SECSID_NULL ;
 int context_destroy (struct context*) ;
 int * initial_sid_to_string ;
 int kfree (char*) ;
 char* kmemdup_nul (char const*,int,int ) ;
 char* kstrdup (char*,int ) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int sidtab_context_to_sid (struct sidtab*,struct context*,int*) ;
 int strcmp (int ,char*) ;
 int string_to_context_struct (struct policydb*,struct sidtab*,char*,struct context*,int) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static int security_context_to_sid_core(struct selinux_state *state,
     const char *scontext, u32 scontext_len,
     u32 *sid, u32 def_sid, gfp_t gfp_flags,
     int force)
{
 struct policydb *policydb;
 struct sidtab *sidtab;
 char *scontext2, *str = ((void*)0);
 struct context context;
 int rc = 0;


 if (!scontext_len)
  return -EINVAL;


 scontext2 = kmemdup_nul(scontext, scontext_len, gfp_flags);
 if (!scontext2)
  return -ENOMEM;

 if (!state->initialized) {
  int i;

  for (i = 1; i < SECINITSID_NUM; i++) {
   if (!strcmp(initial_sid_to_string[i], scontext2)) {
    *sid = i;
    goto out;
   }
  }
  *sid = SECINITSID_KERNEL;
  goto out;
 }
 *sid = SECSID_NULL;

 if (force) {

  rc = -ENOMEM;
  str = kstrdup(scontext2, gfp_flags);
  if (!str)
   goto out;
 }
 read_lock(&state->ss->policy_rwlock);
 policydb = &state->ss->policydb;
 sidtab = state->ss->sidtab;
 rc = string_to_context_struct(policydb, sidtab, scontext2,
          &context, def_sid);
 if (rc == -EINVAL && force) {
  context.str = str;
  context.len = strlen(str) + 1;
  str = ((void*)0);
 } else if (rc)
  goto out_unlock;
 rc = sidtab_context_to_sid(sidtab, &context, sid);
 context_destroy(&context);
out_unlock:
 read_unlock(&state->ss->policy_rwlock);
out:
 kfree(scontext2);
 kfree(str);
 return rc;
}
