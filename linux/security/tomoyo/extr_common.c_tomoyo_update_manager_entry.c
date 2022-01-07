
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tomoyo_manager {scalar_t__ manager; int head; } ;
struct tomoyo_acl_param {int const is_delete; int * list; } ;
typedef int e ;
struct TYPE_2__ {int * policy_list; } ;


 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 size_t TOMOYO_ID_MANAGER ;
 int tomoyo_correct_domain (char const*) ;
 int tomoyo_correct_word (char const*) ;
 scalar_t__ tomoyo_get_name (char const*) ;
 TYPE_1__ tomoyo_kernel_namespace ;
 int tomoyo_put_name (scalar_t__) ;
 int tomoyo_same_manager ;
 int tomoyo_update_policy (int *,int,struct tomoyo_acl_param*,int ) ;

__attribute__((used)) static int tomoyo_update_manager_entry(const char *manager,
           const bool is_delete)
{
 struct tomoyo_manager e = { };
 struct tomoyo_acl_param param = {

  .is_delete = is_delete,
  .list = &tomoyo_kernel_namespace.policy_list[TOMOYO_ID_MANAGER],
 };
 int error = is_delete ? -ENOENT : -ENOMEM;

 if (!tomoyo_correct_domain(manager) &&
     !tomoyo_correct_word(manager))
  return -EINVAL;
 e.manager = tomoyo_get_name(manager);
 if (e.manager) {
  error = tomoyo_update_policy(&e.head, sizeof(e), &param,
          tomoyo_same_manager);
  tomoyo_put_name(e.manager);
 }
 return error;
}
