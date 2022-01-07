
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tomoyo_profile {int default_config; int * pref; int config; } ;
struct tomoyo_policy_namespace {struct tomoyo_profile** profile_ptr; } ;


 int CONFIG_SECURITY_TOMOYO_MAX_ACCEPT_ENTRY ;
 int CONFIG_SECURITY_TOMOYO_MAX_AUDIT_LOG ;
 int GFP_NOFS ;
 int TOMOYO_CONFIG_DISABLED ;
 int TOMOYO_CONFIG_USE_DEFAULT ;
 int TOMOYO_CONFIG_WANT_GRANT_LOG ;
 int TOMOYO_CONFIG_WANT_REJECT_LOG ;
 unsigned int const TOMOYO_MAX_PROFILES ;
 size_t TOMOYO_PREF_MAX_AUDIT_LOG ;
 size_t TOMOYO_PREF_MAX_LEARNING_ENTRY ;
 int kfree (struct tomoyo_profile*) ;
 struct tomoyo_profile* kzalloc (int,int ) ;
 int mb () ;
 int memset (int ,int ,int) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ tomoyo_memory_ok (struct tomoyo_profile*) ;
 int tomoyo_policy_lock ;

__attribute__((used)) static struct tomoyo_profile *tomoyo_assign_profile
(struct tomoyo_policy_namespace *ns, const unsigned int profile)
{
 struct tomoyo_profile *ptr;
 struct tomoyo_profile *entry;

 if (profile >= TOMOYO_MAX_PROFILES)
  return ((void*)0);
 ptr = ns->profile_ptr[profile];
 if (ptr)
  return ptr;
 entry = kzalloc(sizeof(*entry), GFP_NOFS);
 if (mutex_lock_interruptible(&tomoyo_policy_lock))
  goto out;
 ptr = ns->profile_ptr[profile];
 if (!ptr && tomoyo_memory_ok(entry)) {
  ptr = entry;
  ptr->default_config = TOMOYO_CONFIG_DISABLED |
   TOMOYO_CONFIG_WANT_GRANT_LOG |
   TOMOYO_CONFIG_WANT_REJECT_LOG;
  memset(ptr->config, TOMOYO_CONFIG_USE_DEFAULT,
         sizeof(ptr->config));
  ptr->pref[TOMOYO_PREF_MAX_AUDIT_LOG] =
   CONFIG_SECURITY_TOMOYO_MAX_AUDIT_LOG;
  ptr->pref[TOMOYO_PREF_MAX_LEARNING_ENTRY] =
   CONFIG_SECURITY_TOMOYO_MAX_ACCEPT_ENTRY;
  mb();
  ns->profile_ptr[profile] = ptr;
  entry = ((void*)0);
 }
 mutex_unlock(&tomoyo_policy_lock);
 out:
 kfree(entry);
 return ptr;
}
