
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; } ;
struct tomoyo_task_acl {scalar_t__ domainname; TYPE_1__ head; } ;
struct tomoyo_acl_param {int data; } ;
typedef int e ;


 int EINVAL ;
 int TOMOYO_TYPE_MANUAL_TASK_ACL ;
 scalar_t__ tomoyo_get_domainname (struct tomoyo_acl_param*) ;
 int tomoyo_put_name (scalar_t__) ;
 int tomoyo_same_task_acl ;
 scalar_t__ tomoyo_str_starts (int *,char*) ;
 int tomoyo_update_domain (TYPE_1__*,int,struct tomoyo_acl_param*,int ,int *) ;

__attribute__((used)) static int tomoyo_write_task(struct tomoyo_acl_param *param)
{
 int error = -EINVAL;

 if (tomoyo_str_starts(&param->data, "manual_domain_transition ")) {
  struct tomoyo_task_acl e = {
   .head.type = TOMOYO_TYPE_MANUAL_TASK_ACL,
   .domainname = tomoyo_get_domainname(param),
  };

  if (e.domainname)
   error = tomoyo_update_domain(&e.head, sizeof(e), param,
           tomoyo_same_task_acl,
           ((void*)0));
  tomoyo_put_name(e.domainname);
 }
 return error;
}
