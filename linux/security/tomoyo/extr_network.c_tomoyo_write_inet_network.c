
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t u8 ;
struct TYPE_6__ {int* values; } ;
struct TYPE_7__ {int group; } ;
struct TYPE_5__ {int type; } ;
struct tomoyo_inet_acl {size_t protocol; int perm; TYPE_2__ port; TYPE_4__ address; TYPE_1__ head; } ;
struct tomoyo_acl_param {char* data; } ;
typedef int e ;


 int EINVAL ;
 int ENOMEM ;
 int TOMOYO_ADDRESS_GROUP ;
 size_t TOMOYO_MAX_NETWORK_OPERATION ;
 size_t TOMOYO_SOCK_MAX ;
 int TOMOYO_TYPE_INET_ACL ;
 int strcmp (char const*,int ) ;
 int tomoyo_get_group (struct tomoyo_acl_param*,int ) ;
 int tomoyo_merge_inet_acl ;
 int tomoyo_parse_ipaddr_union (struct tomoyo_acl_param*,TYPE_4__*) ;
 int tomoyo_parse_number_union (struct tomoyo_acl_param*,TYPE_2__*) ;
 scalar_t__ tomoyo_permstr (char const*,int ) ;
 int * tomoyo_proto_keyword ;
 int tomoyo_put_group (int ) ;
 int tomoyo_put_number_union (TYPE_2__*) ;
 char* tomoyo_read_token (struct tomoyo_acl_param*) ;
 int tomoyo_same_inet_acl ;
 int * tomoyo_socket_keyword ;
 int tomoyo_update_domain (TYPE_1__*,int,struct tomoyo_acl_param*,int ,int ) ;

int tomoyo_write_inet_network(struct tomoyo_acl_param *param)
{
 struct tomoyo_inet_acl e = { .head.type = TOMOYO_TYPE_INET_ACL };
 int error = -EINVAL;
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
 if (param->data[0] == '@') {
  param->data++;
  e.address.group =
   tomoyo_get_group(param, TOMOYO_ADDRESS_GROUP);
  if (!e.address.group)
   return -ENOMEM;
 } else {
  if (!tomoyo_parse_ipaddr_union(param, &e.address))
   goto out;
 }
 if (!tomoyo_parse_number_union(param, &e.port) ||
     e.port.values[1] > 65535)
  goto out;
 error = tomoyo_update_domain(&e.head, sizeof(e), param,
         tomoyo_same_inet_acl,
         tomoyo_merge_inet_acl);
out:
 tomoyo_put_group(e.address.group);
 tomoyo_put_number_union(&e.port);
 return error;
}
