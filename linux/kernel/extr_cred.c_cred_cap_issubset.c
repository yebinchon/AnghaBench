
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct user_namespace {int owner; struct user_namespace const* parent; } const user_namespace ;
struct cred {int euid; int cap_permitted; struct user_namespace const* user_ns; } ;


 int cap_issubset (int ,int ) ;
 struct user_namespace const init_user_ns ;
 scalar_t__ uid_eq (int ,int ) ;

__attribute__((used)) static bool cred_cap_issubset(const struct cred *set, const struct cred *subset)
{
 const struct user_namespace *set_ns = set->user_ns;
 const struct user_namespace *subset_ns = subset->user_ns;




 if (set_ns == subset_ns)
  return cap_issubset(subset->cap_permitted, set->cap_permitted);






 for (;subset_ns != &init_user_ns; subset_ns = subset_ns->parent) {
  if ((set_ns == subset_ns->parent) &&
      uid_eq(subset_ns->owner, set->euid))
   return 1;
 }

 return 0;
}
