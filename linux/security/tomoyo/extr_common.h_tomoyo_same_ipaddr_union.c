
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tomoyo_ipaddr_union {scalar_t__ group; scalar_t__ is_ipv6; int ip; } ;


 int memcmp (int ,int ,int) ;

__attribute__((used)) static inline bool tomoyo_same_ipaddr_union
(const struct tomoyo_ipaddr_union *a, const struct tomoyo_ipaddr_union *b)
{
 return !memcmp(a->ip, b->ip, sizeof(a->ip)) && a->group == b->group &&
  a->is_ipv6 == b->is_ipv6;
}
