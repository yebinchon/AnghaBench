
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct TYPE_2__ {int type; } ;
struct tomoyo_unix_acl {size_t protocol; int perm; int name; TYPE_1__ head; } ;
struct tomoyo_acl_param {int dummy; } ;
typedef int e ;


 int EINVAL ;
 size_t TOMOYO_MAX_NETWORK_OPERATION ;
 size_t TOMOYO_SOCK_MAX ;
 int TOMOYO_TYPE_UNIX_ACL ;
 int strcmp (char const*,int ) ;
 int tomoyo_merge_unix_acl ;
 int tomoyo_parse_name_union (struct tomoyo_acl_param*,int *) ;
 scalar_t__ tomoyo_permstr (char const*,int ) ;
 int * tomoyo_proto_keyword ;
 int tomoyo_put_name_union (int *) ;
 char* tomoyo_read_token (struct tomoyo_acl_param*) ;
 int tomoyo_same_unix_acl ;
 int * tomoyo_socket_keyword ;
 int tomoyo_update_domain (TYPE_1__*,int,struct tomoyo_acl_param*,int ,int ) ;

int tomoyo_write_unix_network(struct tomoyo_acl_param *param)
{
 struct tomoyo_unix_acl e = { .head.type = TOMOYO_TYPE_UNIX_ACL };
 int error;
 u8 type;
 const char *protocol = tomoyo_read_token(param);
 const char *operation = tomoyo_read_token(param);

 for (e.protocol = 0; e.protocol < TOMOYO_SOCK_MAX; e.protocol++)
  if (!strcmp(protocol, tomoyo_proto_keyword[e.protocol]))
   break;
 for (type = 0; type < TOMOYO_MAX_NETWORK_OPERATION; type++)
  if (tomoyo_permstr(operation, tomoyo_socket_keyword[type]))
   e.perm |= 1 << type;
 if (e.protocol == TOMOYO_SOCK_MAX || !e.perm)
  return -EINVAL;
 if (!tomoyo_parse_name_union(param, &e.name))
  return -EINVAL;
 error = tomoyo_update_domain(&e.head, sizeof(e), param,
         tomoyo_same_unix_acl,
         tomoyo_merge_unix_acl);
 tomoyo_put_name_union(&e.name);
 return error;
}
