
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int type; } ;
struct tomoyo_mkdev_acl {int minor; int major; int mode; int name; TYPE_1__ head; int const perm; } ;
struct tomoyo_acl_param {int dummy; } ;
typedef int e ;


 int EINVAL ;
 int TOMOYO_TYPE_MKDEV_ACL ;
 int tomoyo_merge_mkdev_acl ;
 int tomoyo_parse_name_union (struct tomoyo_acl_param*,int *) ;
 int tomoyo_parse_number_union (struct tomoyo_acl_param*,int *) ;
 int tomoyo_put_name_union (int *) ;
 int tomoyo_put_number_union (int *) ;
 int tomoyo_same_mkdev_acl ;
 int tomoyo_update_domain (TYPE_1__*,int,struct tomoyo_acl_param*,int ,int ) ;

__attribute__((used)) static int tomoyo_update_mkdev_acl(const u8 perm,
       struct tomoyo_acl_param *param)
{
 struct tomoyo_mkdev_acl e = {
  .head.type = TOMOYO_TYPE_MKDEV_ACL,
  .perm = perm
 };
 int error;

 if (!tomoyo_parse_name_union(param, &e.name) ||
     !tomoyo_parse_number_union(param, &e.mode) ||
     !tomoyo_parse_number_union(param, &e.major) ||
     !tomoyo_parse_number_union(param, &e.minor))
  error = -EINVAL;
 else
  error = tomoyo_update_domain(&e.head, sizeof(e), param,
          tomoyo_same_mkdev_acl,
          tomoyo_merge_mkdev_acl);
 tomoyo_put_name_union(&e.name);
 tomoyo_put_number_union(&e.mode);
 tomoyo_put_number_union(&e.major);
 tomoyo_put_number_union(&e.minor);
 return error;
}
