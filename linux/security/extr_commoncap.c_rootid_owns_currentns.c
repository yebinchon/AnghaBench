
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_namespace {struct user_namespace* parent; } ;
typedef int kuid_t ;


 struct user_namespace* current_user_ns () ;
 scalar_t__ from_kuid (struct user_namespace*,int ) ;
 struct user_namespace init_user_ns ;
 int uid_valid (int ) ;

__attribute__((used)) static bool rootid_owns_currentns(kuid_t kroot)
{
 struct user_namespace *ns;

 if (!uid_valid(kroot))
  return 0;

 for (ns = current_user_ns(); ; ns = ns->parent) {
  if (from_kuid(ns, kroot) == 0)
   return 1;
  if (ns == &init_user_ns)
   break;
 }

 return 0;
}
