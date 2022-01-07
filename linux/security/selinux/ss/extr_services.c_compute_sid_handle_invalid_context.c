
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct selinux_state {TYPE_1__* ss; } ;
struct policydb {int dummy; } ;
struct context {int dummy; } ;
struct audit_buffer {int dummy; } ;
struct TYPE_2__ {struct policydb policydb; } ;


 int AUDIT_SELINUX_ERR ;
 int EACCES ;
 int GFP_ATOMIC ;
 int SYM_CLASSES ;
 int audit_context () ;
 int audit_log_end (struct audit_buffer*) ;
 int audit_log_format (struct audit_buffer*,char*,...) ;
 int audit_log_n_untrustedstring (struct audit_buffer*,char*,scalar_t__) ;
 struct audit_buffer* audit_log_start (int ,int ,int ) ;
 scalar_t__ context_struct_to_string (struct policydb*,struct context*,char**,scalar_t__*) ;
 int enforcing_enabled (struct selinux_state*) ;
 int kfree (char*) ;
 int sym_name (struct policydb*,int ,scalar_t__) ;

__attribute__((used)) static int compute_sid_handle_invalid_context(
 struct selinux_state *state,
 struct context *scontext,
 struct context *tcontext,
 u16 tclass,
 struct context *newcontext)
{
 struct policydb *policydb = &state->ss->policydb;
 char *s = ((void*)0), *t = ((void*)0), *n = ((void*)0);
 u32 slen, tlen, nlen;
 struct audit_buffer *ab;

 if (context_struct_to_string(policydb, scontext, &s, &slen))
  goto out;
 if (context_struct_to_string(policydb, tcontext, &t, &tlen))
  goto out;
 if (context_struct_to_string(policydb, newcontext, &n, &nlen))
  goto out;
 ab = audit_log_start(audit_context(), GFP_ATOMIC, AUDIT_SELINUX_ERR);
 audit_log_format(ab,
    "op=security_compute_sid invalid_context=");

 audit_log_n_untrustedstring(ab, n, nlen - 1);
 audit_log_format(ab, " scontext=%s tcontext=%s tclass=%s",
    s, t, sym_name(policydb, SYM_CLASSES, tclass-1));
 audit_log_end(ab);
out:
 kfree(s);
 kfree(t);
 kfree(n);
 if (!enforcing_enabled(state))
  return 0;
 return -EACCES;
}
