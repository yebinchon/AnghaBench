
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nlattr {int dummy; } ;
typedef enum ip_set_ext_id { ____Placeholder_ip_set_ext_id } ip_set_ext_id ;
struct TYPE_2__ {int flag; } ;


 size_t IPSET_ATTR_TIMEOUT ;
 TYPE_1__* ip_set_extensions ;

__attribute__((used)) static inline bool
add_extension(enum ip_set_ext_id id, u32 flags, struct nlattr *tb[])
{
 return ip_set_extensions[id].flag ?
  (flags & ip_set_extensions[id].flag) :
  !!tb[IPSET_ATTR_TIMEOUT];
}
