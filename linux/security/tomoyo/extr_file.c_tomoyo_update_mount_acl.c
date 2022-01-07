
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; } ;
struct tomoyo_mount_acl {int flags; int fs_type; int dir_name; int dev_name; TYPE_1__ head; } ;
struct tomoyo_acl_param {int dummy; } ;
typedef int e ;


 int EINVAL ;
 int TOMOYO_TYPE_MOUNT_ACL ;
 int tomoyo_parse_name_union (struct tomoyo_acl_param*,int *) ;
 int tomoyo_parse_number_union (struct tomoyo_acl_param*,int *) ;
 int tomoyo_put_name_union (int *) ;
 int tomoyo_put_number_union (int *) ;
 int tomoyo_same_mount_acl ;
 int tomoyo_update_domain (TYPE_1__*,int,struct tomoyo_acl_param*,int ,int *) ;

__attribute__((used)) static int tomoyo_update_mount_acl(struct tomoyo_acl_param *param)
{
 struct tomoyo_mount_acl e = { .head.type = TOMOYO_TYPE_MOUNT_ACL };
 int error;

 if (!tomoyo_parse_name_union(param, &e.dev_name) ||
     !tomoyo_parse_name_union(param, &e.dir_name) ||
     !tomoyo_parse_name_union(param, &e.fs_type) ||
     !tomoyo_parse_number_union(param, &e.flags))
  error = -EINVAL;
 else
  error = tomoyo_update_domain(&e.head, sizeof(e), param,
          tomoyo_same_mount_acl, ((void*)0));
 tomoyo_put_name_union(&e.dev_name);
 tomoyo_put_name_union(&e.dir_name);
 tomoyo_put_name_union(&e.fs_type);
 tomoyo_put_number_union(&e.flags);
 return error;
}
