
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct policydb {int dummy; } ;
struct context {scalar_t__ type; scalar_t__ role; scalar_t__ user; int str; scalar_t__ len; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int SYM_ROLES ;
 int SYM_TYPES ;
 int SYM_USERS ;
 char* kmalloc (scalar_t__,int ) ;
 char* kstrdup (int ,int ) ;
 scalar_t__ mls_compute_context_len (struct policydb*,struct context*) ;
 int mls_sid_to_context (struct policydb*,struct context*,char**) ;
 int sprintf (char*,char*,char*,char*,char*) ;
 scalar_t__ strlen (char*) ;
 char* sym_name (struct policydb*,int ,scalar_t__) ;

__attribute__((used)) static int context_struct_to_string(struct policydb *p,
        struct context *context,
        char **scontext, u32 *scontext_len)
{
 char *scontextp;

 if (scontext)
  *scontext = ((void*)0);
 *scontext_len = 0;

 if (context->len) {
  *scontext_len = context->len;
  if (scontext) {
   *scontext = kstrdup(context->str, GFP_ATOMIC);
   if (!(*scontext))
    return -ENOMEM;
  }
  return 0;
 }


 *scontext_len += strlen(sym_name(p, SYM_USERS, context->user - 1)) + 1;
 *scontext_len += strlen(sym_name(p, SYM_ROLES, context->role - 1)) + 1;
 *scontext_len += strlen(sym_name(p, SYM_TYPES, context->type - 1)) + 1;
 *scontext_len += mls_compute_context_len(p, context);

 if (!scontext)
  return 0;


 scontextp = kmalloc(*scontext_len, GFP_ATOMIC);
 if (!scontextp)
  return -ENOMEM;
 *scontext = scontextp;




 scontextp += sprintf(scontextp, "%s:%s:%s",
  sym_name(p, SYM_USERS, context->user - 1),
  sym_name(p, SYM_ROLES, context->role - 1),
  sym_name(p, SYM_TYPES, context->type - 1));

 mls_sid_to_context(p, context, &scontextp);

 *scontextp = 0;

 return 0;
}
