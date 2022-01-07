
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct selinux_state {TYPE_1__* ss; } ;
struct policydb {int dummy; } ;
struct context {int dummy; } ;
struct TYPE_2__ {struct policydb policydb; } ;


 int AUDIT_SELINUX_ERR ;
 int EPERM ;
 int GFP_ATOMIC ;
 int SYM_CLASSES ;
 int audit_context () ;
 int audit_log (int ,int ,int ,char*,char*,char*,char*,int ) ;
 scalar_t__ context_struct_to_string (struct policydb*,struct context*,char**,int *) ;
 int enforcing_enabled (struct selinux_state*) ;
 int kfree (char*) ;
 int sym_name (struct policydb*,int ,scalar_t__) ;

__attribute__((used)) static int security_validtrans_handle_fail(struct selinux_state *state,
        struct context *ocontext,
        struct context *ncontext,
        struct context *tcontext,
        u16 tclass)
{
 struct policydb *p = &state->ss->policydb;
 char *o = ((void*)0), *n = ((void*)0), *t = ((void*)0);
 u32 olen, nlen, tlen;

 if (context_struct_to_string(p, ocontext, &o, &olen))
  goto out;
 if (context_struct_to_string(p, ncontext, &n, &nlen))
  goto out;
 if (context_struct_to_string(p, tcontext, &t, &tlen))
  goto out;
 audit_log(audit_context(), GFP_ATOMIC, AUDIT_SELINUX_ERR,
    "op=security_validate_transition seresult=denied"
    " oldcontext=%s newcontext=%s taskcontext=%s tclass=%s",
    o, n, t, sym_name(p, SYM_CLASSES, tclass-1));
out:
 kfree(o);
 kfree(n);
 kfree(t);

 if (!enforcing_enabled(state))
  return 0;
 return -EPERM;
}
