
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tomoyo_aggregator {TYPE_2__* aggregated_name; TYPE_2__* original_name; int head; } ;
struct tomoyo_acl_param {TYPE_1__* ns; int * list; scalar_t__ is_delete; } ;
typedef int e ;
struct TYPE_4__ {scalar_t__ is_patterned; } ;
struct TYPE_3__ {int * policy_list; } ;


 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 size_t TOMOYO_ID_AGGREGATOR ;
 int tomoyo_correct_path (char const*) ;
 int tomoyo_correct_word (char const*) ;
 void* tomoyo_get_name (char const*) ;
 int tomoyo_put_name (TYPE_2__*) ;
 char* tomoyo_read_token (struct tomoyo_acl_param*) ;
 int tomoyo_same_aggregator ;
 int tomoyo_update_policy (int *,int,struct tomoyo_acl_param*,int ) ;

int tomoyo_write_aggregator(struct tomoyo_acl_param *param)
{
 struct tomoyo_aggregator e = { };
 int error = param->is_delete ? -ENOENT : -ENOMEM;
 const char *original_name = tomoyo_read_token(param);
 const char *aggregated_name = tomoyo_read_token(param);

 if (!tomoyo_correct_word(original_name) ||
     !tomoyo_correct_path(aggregated_name))
  return -EINVAL;
 e.original_name = tomoyo_get_name(original_name);
 e.aggregated_name = tomoyo_get_name(aggregated_name);
 if (!e.original_name || !e.aggregated_name ||
     e.aggregated_name->is_patterned)
  goto out;
 param->list = &param->ns->policy_list[TOMOYO_ID_AGGREGATOR];
 error = tomoyo_update_policy(&e.head, sizeof(e), param,
         tomoyo_same_aggregator);
out:
 tomoyo_put_name(e.original_name);
 tomoyo_put_name(e.aggregated_name);
 return error;
}
