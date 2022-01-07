
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct tomoyo_ipaddr_union {int is_ipv6; TYPE_2__* ip; } ;
struct tomoyo_acl_param {int dummy; } ;
struct TYPE_3__ {int * u6_addr8; } ;
struct TYPE_4__ {int * s6_addr32; TYPE_1__ in6_u; } ;


 scalar_t__ in4_pton (char const*,int,int * const,char,char const**) ;
 scalar_t__ in6_pton (char const*,int,int * const,char,char const**) ;
 int memmove (int * const,int * const,int) ;
 int strchr (char*,char) ;
 char* tomoyo_read_token (struct tomoyo_acl_param*) ;

bool tomoyo_parse_ipaddr_union(struct tomoyo_acl_param *param,
          struct tomoyo_ipaddr_union *ptr)
{
 u8 * const min = ptr->ip[0].in6_u.u6_addr8;
 u8 * const max = ptr->ip[1].in6_u.u6_addr8;
 char *address = tomoyo_read_token(param);
 const char *end;

 if (!strchr(address, ':') &&
     in4_pton(address, -1, min, '-', &end) > 0) {
  ptr->is_ipv6 = 0;
  if (!*end)
   ptr->ip[1].s6_addr32[0] = ptr->ip[0].s6_addr32[0];
  else if (*end++ != '-' ||
    in4_pton(end, -1, max, '\0', &end) <= 0 || *end)
   return 0;
  return 1;
 }
 if (in6_pton(address, -1, min, '-', &end) > 0) {
  ptr->is_ipv6 = 1;
  if (!*end)
   memmove(max, min, sizeof(u16) * 8);
  else if (*end++ != '-' ||
    in6_pton(end, -1, max, '\0', &end) <= 0 || *end)
   return 0;
  return 1;
 }
 return 0;
}
