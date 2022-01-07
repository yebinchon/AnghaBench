
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct aa_ns {int dummy; } ;
struct aa_label {int dummy; } ;


 int AA_MAY_REMOVE_POLICY ;
 int AA_MAY_REPLACE_POLICY ;
 int EACCES ;
 char* OP_PROF_LOAD ;
 char* OP_PROF_REPL ;
 char* OP_PROF_RM ;
 scalar_t__ aa_g_lock_policy ;
 int audit_policy (struct aa_label*,char const*,int *,int *,char*,int ) ;
 int policy_admin_capable (struct aa_ns*) ;

int aa_may_manage_policy(struct aa_label *label, struct aa_ns *ns, u32 mask)
{
 const char *op;

 if (mask & AA_MAY_REMOVE_POLICY)
  op = OP_PROF_RM;
 else if (mask & AA_MAY_REPLACE_POLICY)
  op = OP_PROF_REPL;
 else
  op = OP_PROF_LOAD;


 if (aa_g_lock_policy)
  return audit_policy(label, op, ((void*)0), ((void*)0), "policy_locked",
        -EACCES);

 if (!policy_admin_capable(ns))
  return audit_policy(label, op, ((void*)0), ((void*)0), "not policy admin",
        -EACCES);


 return 0;
}
