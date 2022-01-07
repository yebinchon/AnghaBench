
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct tomoyo_path_info* name; } ;
struct TYPE_4__ {TYPE_1__ environ; } ;
struct tomoyo_request_info {TYPE_2__ param; int param_type; } ;
struct tomoyo_path_info {char const* name; } ;


 int TOMOYO_RETRY_REQUEST ;
 int TOMOYO_TYPE_ENV_ACL ;
 int tomoyo_audit_env_log (struct tomoyo_request_info*) ;
 int tomoyo_check_acl (struct tomoyo_request_info*,int ) ;
 int tomoyo_check_env_acl ;
 int tomoyo_fill_path_info (struct tomoyo_path_info*) ;

int tomoyo_env_perm(struct tomoyo_request_info *r, const char *env)
{
 struct tomoyo_path_info environ;
 int error;

 if (!env || !*env)
  return 0;
 environ.name = env;
 tomoyo_fill_path_info(&environ);
 r->param_type = TOMOYO_TYPE_ENV_ACL;
 r->param.environ.name = &environ;
 do {
  tomoyo_check_acl(r, tomoyo_check_env_acl);
  error = tomoyo_audit_env_log(r);
 } while (error == TOMOYO_RETRY_REQUEST);
 return error;
}
