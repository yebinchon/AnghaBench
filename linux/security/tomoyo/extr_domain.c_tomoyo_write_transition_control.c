
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct tomoyo_transition_control {scalar_t__ const type; int is_last_name; void* program; void* domainname; int head; } ;
struct tomoyo_acl_param {char* data; TYPE_1__* ns; int * list; scalar_t__ is_delete; } ;
typedef int e ;
struct TYPE_2__ {int * policy_list; } ;


 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 size_t TOMOYO_ID_TRANSITION_CONTROL ;
 scalar_t__ const TOMOYO_TRANSITION_CONTROL_KEEP ;
 scalar_t__ const TOMOYO_TRANSITION_CONTROL_NO_KEEP ;
 scalar_t__ strcmp (char*,char*) ;
 char* strstr (char*,char*) ;
 int tomoyo_correct_domain (char*) ;
 int tomoyo_correct_path (char*) ;
 void* tomoyo_get_name (char*) ;
 int tomoyo_put_name (void*) ;
 int tomoyo_same_transition_control ;
 int tomoyo_update_policy (int *,int,struct tomoyo_acl_param*,int ) ;

int tomoyo_write_transition_control(struct tomoyo_acl_param *param,
        const u8 type)
{
 struct tomoyo_transition_control e = { .type = type };
 int error = param->is_delete ? -ENOENT : -ENOMEM;
 char *program = param->data;
 char *domainname = strstr(program, " from ");

 if (domainname) {
  *domainname = '\0';
  domainname += 6;
 } else if (type == TOMOYO_TRANSITION_CONTROL_NO_KEEP ||
     type == TOMOYO_TRANSITION_CONTROL_KEEP) {
  domainname = program;
  program = ((void*)0);
 }
 if (program && strcmp(program, "any")) {
  if (!tomoyo_correct_path(program))
   return -EINVAL;
  e.program = tomoyo_get_name(program);
  if (!e.program)
   goto out;
 }
 if (domainname && strcmp(domainname, "any")) {
  if (!tomoyo_correct_domain(domainname)) {
   if (!tomoyo_correct_path(domainname))
    goto out;
   e.is_last_name = 1;
  }
  e.domainname = tomoyo_get_name(domainname);
  if (!e.domainname)
   goto out;
 }
 param->list = &param->ns->policy_list[TOMOYO_ID_TRANSITION_CONTROL];
 error = tomoyo_update_policy(&e.head, sizeof(e), param,
         tomoyo_same_transition_control);
out:
 tomoyo_put_name(e.domainname);
 tomoyo_put_name(e.program);
 return error;
}
