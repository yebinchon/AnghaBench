
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; } ;
struct tomoyo_env_acl {int env; TYPE_1__ head; } ;
struct tomoyo_acl_param {int dummy; } ;
typedef int e ;


 int EINVAL ;
 int ENOMEM ;
 int TOMOYO_TYPE_ENV_ACL ;
 scalar_t__ strchr (char const*,char) ;
 int tomoyo_correct_word (char const*) ;
 int tomoyo_get_name (char const*) ;
 int tomoyo_put_name (int ) ;
 char* tomoyo_read_token (struct tomoyo_acl_param*) ;
 int tomoyo_same_env_acl ;
 int tomoyo_update_domain (TYPE_1__*,int,struct tomoyo_acl_param*,int ,int *) ;

__attribute__((used)) static int tomoyo_write_env(struct tomoyo_acl_param *param)
{
 struct tomoyo_env_acl e = { .head.type = TOMOYO_TYPE_ENV_ACL };
 int error = -ENOMEM;
 const char *data = tomoyo_read_token(param);

 if (!tomoyo_correct_word(data) || strchr(data, '='))
  return -EINVAL;
 e.env = tomoyo_get_name(data);
 if (!e.env)
  return error;
 error = tomoyo_update_domain(&e.head, sizeof(e), param,
      tomoyo_same_env_acl, ((void*)0));
 tomoyo_put_name(e.env);
 return error;
}
