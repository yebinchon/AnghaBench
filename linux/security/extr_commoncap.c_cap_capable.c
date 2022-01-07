
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_namespace {scalar_t__ level; struct user_namespace* parent; int owner; } ;
struct cred {int euid; struct user_namespace* user_ns; int cap_effective; } ;


 int EPERM ;
 scalar_t__ cap_raised (int ,int) ;
 scalar_t__ uid_eq (int ,int ) ;

int cap_capable(const struct cred *cred, struct user_namespace *targ_ns,
  int cap, unsigned int opts)
{
 struct user_namespace *ns = targ_ns;





 for (;;) {

  if (ns == cred->user_ns)
   return cap_raised(cred->cap_effective, cap) ? 0 : -EPERM;





  if (ns->level <= cred->user_ns->level)
   return -EPERM;





  if ((ns->parent == cred->user_ns) && uid_eq(ns->owner, cred->euid))
   return 0;





  ns = ns->parent;
 }


}
