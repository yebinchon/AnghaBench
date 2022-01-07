
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tomoyo_request_info {int granted; } ;
struct tomoyo_domain_info {size_t profile; int group; int domainname; int list; int acl_info_list; TYPE_1__* ns; } ;
typedef int e ;
struct TYPE_2__ {int * profile_ptr; } ;


 int INIT_LIST_HEAD (int *) ;
 int TOMOYO_EXEC_TMPSIZE ;
 int TOMOYO_MAC_FILE_EXECUTE ;
 int TOMOYO_MAX_ACL_GROUPS ;
 int TOMOYO_STAT_POLICY_UPDATES ;
 int list_add_tail_rcu (int *,int *) ;
 int memcpy (int ,int ,int) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int strlen (char const*) ;
 scalar_t__ test_bit (int,int ) ;
 TYPE_1__* tomoyo_assign_namespace (char const*) ;
 struct tomoyo_domain_info* tomoyo_commit_ok (struct tomoyo_domain_info*,int) ;
 int tomoyo_correct_domain (char const*) ;
 struct tomoyo_domain_info* tomoyo_domain () ;
 int tomoyo_domain_list ;
 struct tomoyo_domain_info* tomoyo_find_domain (char const*) ;
 int tomoyo_get_name (char const*) ;
 int tomoyo_init_request_info (struct tomoyo_request_info*,struct tomoyo_domain_info*,int ) ;
 scalar_t__ tomoyo_namespace_jump (char const*) ;
 scalar_t__ tomoyo_policy_loaded ;
 int tomoyo_policy_lock ;
 int tomoyo_put_name (int ) ;
 int tomoyo_update_stat (int ) ;
 int tomoyo_write_log (struct tomoyo_request_info*,char*,int) ;

struct tomoyo_domain_info *tomoyo_assign_domain(const char *domainname,
      const bool transit)
{
 struct tomoyo_domain_info e = { };
 struct tomoyo_domain_info *entry = tomoyo_find_domain(domainname);
 bool created = 0;

 if (entry) {
  if (transit) {






   if (tomoyo_policy_loaded &&
       !entry->ns->profile_ptr[entry->profile])
    return ((void*)0);
  }
  return entry;
 }


 if (strlen(domainname) >= TOMOYO_EXEC_TMPSIZE - 10 ||
     !tomoyo_correct_domain(domainname))
  return ((void*)0);





 if (transit && tomoyo_namespace_jump(domainname))
  return ((void*)0);
 e.ns = tomoyo_assign_namespace(domainname);
 if (!e.ns)
  return ((void*)0);





 if (transit) {
  const struct tomoyo_domain_info *domain = tomoyo_domain();

  e.profile = domain->profile;
  memcpy(e.group, domain->group, sizeof(e.group));
 }
 e.domainname = tomoyo_get_name(domainname);
 if (!e.domainname)
  return ((void*)0);
 if (mutex_lock_interruptible(&tomoyo_policy_lock))
  goto out;
 entry = tomoyo_find_domain(domainname);
 if (!entry) {
  entry = tomoyo_commit_ok(&e, sizeof(e));
  if (entry) {
   INIT_LIST_HEAD(&entry->acl_info_list);
   list_add_tail_rcu(&entry->list, &tomoyo_domain_list);
   created = 1;
  }
 }
 mutex_unlock(&tomoyo_policy_lock);
out:
 tomoyo_put_name(e.domainname);
 if (entry && transit) {
  if (created) {
   struct tomoyo_request_info r;
   int i;

   tomoyo_init_request_info(&r, entry,
       TOMOYO_MAC_FILE_EXECUTE);
   r.granted = 0;
   tomoyo_write_log(&r, "use_profile %u\n",
      entry->profile);
   for (i = 0; i < TOMOYO_MAX_ACL_GROUPS; i++)
    if (test_bit(i, entry->group))
     tomoyo_write_log(&r, "use_group %u\n",
        i);
   tomoyo_update_stat(TOMOYO_STAT_POLICY_UPDATES);
  }
 }
 return entry;
}
