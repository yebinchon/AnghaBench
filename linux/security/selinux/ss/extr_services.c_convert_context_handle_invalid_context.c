
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct selinux_state {TYPE_1__* ss; } ;
struct policydb {int dummy; } ;
struct context {int dummy; } ;
struct TYPE_2__ {struct policydb policydb; } ;


 int EINVAL ;
 int context_struct_to_string (struct policydb*,struct context*,char**,int *) ;
 scalar_t__ enforcing_enabled (struct selinux_state*) ;
 int kfree (char*) ;
 int pr_warn (char*,char*) ;

__attribute__((used)) static inline int convert_context_handle_invalid_context(
 struct selinux_state *state,
 struct context *context)
{
 struct policydb *policydb = &state->ss->policydb;
 char *s;
 u32 len;

 if (enforcing_enabled(state))
  return -EINVAL;

 if (!context_struct_to_string(policydb, context, &s, &len)) {
  pr_warn("SELinux:  Context %s would be invalid if enforcing\n",
   s);
  kfree(s);
 }
 return 0;
}
