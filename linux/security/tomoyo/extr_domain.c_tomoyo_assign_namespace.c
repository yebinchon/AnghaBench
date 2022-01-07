
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tomoyo_policy_namespace {char* name; } ;


 int GFP_NOFS ;
 int TOMOYO_EXEC_TMPSIZE ;
 int kfree (struct tomoyo_policy_namespace*) ;
 struct tomoyo_policy_namespace* kzalloc (int,int ) ;
 int memmove (char*,char const*,unsigned int) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int tomoyo_domain_def (char const*) ;
 struct tomoyo_policy_namespace* tomoyo_find_namespace (char const*,unsigned int) ;
 int tomoyo_init_policy_namespace (struct tomoyo_policy_namespace*) ;
 scalar_t__ tomoyo_memory_ok (struct tomoyo_policy_namespace*) ;
 int tomoyo_policy_lock ;

struct tomoyo_policy_namespace *tomoyo_assign_namespace(const char *domainname)
{
 struct tomoyo_policy_namespace *ptr;
 struct tomoyo_policy_namespace *entry;
 const char *cp = domainname;
 unsigned int len = 0;

 while (*cp && *cp++ != ' ')
  len++;
 ptr = tomoyo_find_namespace(domainname, len);
 if (ptr)
  return ptr;
 if (len >= TOMOYO_EXEC_TMPSIZE - 10 || !tomoyo_domain_def(domainname))
  return ((void*)0);
 entry = kzalloc(sizeof(*entry) + len + 1, GFP_NOFS);
 if (!entry)
  return ((void*)0);
 if (mutex_lock_interruptible(&tomoyo_policy_lock))
  goto out;
 ptr = tomoyo_find_namespace(domainname, len);
 if (!ptr && tomoyo_memory_ok(entry)) {
  char *name = (char *) (entry + 1);

  ptr = entry;
  memmove(name, domainname, len);
  name[len] = '\0';
  entry->name = name;
  tomoyo_init_policy_namespace(entry);
  entry = ((void*)0);
 }
 mutex_unlock(&tomoyo_policy_lock);
out:
 kfree(entry);
 return ptr;
}
