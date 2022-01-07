
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int type; } ;
struct tomoyo_path_acl {int name; TYPE_1__ head; int const perm; } ;
struct tomoyo_acl_param {int dummy; } ;
typedef int e ;


 int EINVAL ;
 int TOMOYO_TYPE_PATH_ACL ;
 int tomoyo_merge_path_acl ;
 int tomoyo_parse_name_union (struct tomoyo_acl_param*,int *) ;
 int tomoyo_put_name_union (int *) ;
 int tomoyo_same_path_acl ;
 int tomoyo_update_domain (TYPE_1__*,int,struct tomoyo_acl_param*,int ,int ) ;

__attribute__((used)) static int tomoyo_update_path_acl(const u16 perm,
      struct tomoyo_acl_param *param)
{
 struct tomoyo_path_acl e = {
  .head.type = TOMOYO_TYPE_PATH_ACL,
  .perm = perm
 };
 int error;

 if (!tomoyo_parse_name_union(param, &e.name))
  error = -EINVAL;
 else
  error = tomoyo_update_domain(&e.head, sizeof(e), param,
          tomoyo_same_path_acl,
          tomoyo_merge_path_acl);
 tomoyo_put_name_union(&e.name);
 return error;
}
