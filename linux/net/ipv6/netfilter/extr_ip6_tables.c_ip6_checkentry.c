
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip6t_ip6 {int flags; int invflags; } ;


 int IP6T_F_MASK ;
 int IP6T_INV_MASK ;

__attribute__((used)) static bool
ip6_checkentry(const struct ip6t_ip6 *ipv6)
{
 if (ipv6->flags & ~IP6T_F_MASK)
  return 0;
 if (ipv6->invflags & ~IP6T_INV_MASK)
  return 0;

 return 1;
}
