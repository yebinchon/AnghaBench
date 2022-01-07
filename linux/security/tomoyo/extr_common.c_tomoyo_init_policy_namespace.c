
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tomoyo_policy_namespace {int profile_version; int namespace_list; int * policy_list; int * group_list; int * acl_group; } ;


 int INIT_LIST_HEAD (int *) ;
 unsigned int TOMOYO_MAX_ACL_GROUPS ;
 unsigned int TOMOYO_MAX_GROUP ;
 unsigned int TOMOYO_MAX_POLICY ;
 int list_add_tail_rcu (int *,int *) ;
 int list_empty (int *) ;
 int tomoyo_namespace_enabled ;
 int tomoyo_namespace_list ;

void tomoyo_init_policy_namespace(struct tomoyo_policy_namespace *ns)
{
 unsigned int idx;

 for (idx = 0; idx < TOMOYO_MAX_ACL_GROUPS; idx++)
  INIT_LIST_HEAD(&ns->acl_group[idx]);
 for (idx = 0; idx < TOMOYO_MAX_GROUP; idx++)
  INIT_LIST_HEAD(&ns->group_list[idx]);
 for (idx = 0; idx < TOMOYO_MAX_POLICY; idx++)
  INIT_LIST_HEAD(&ns->policy_list[idx]);
 ns->profile_version = 20150505;
 tomoyo_namespace_enabled = !list_empty(&tomoyo_namespace_list);
 list_add_tail_rcu(&ns->namespace_list, &tomoyo_namespace_list);
}
