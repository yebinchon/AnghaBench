
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct tomoyo_profile {int dummy; } ;
struct tomoyo_policy_namespace {struct tomoyo_profile** profile_ptr; } ;



struct tomoyo_profile *tomoyo_profile(const struct tomoyo_policy_namespace *ns,
          const u8 profile)
{
 static struct tomoyo_profile tomoyo_null_profile;
 struct tomoyo_profile *ptr = ns->profile_ptr[profile];

 if (!ptr)
  ptr = &tomoyo_null_profile;
 return ptr;
}
