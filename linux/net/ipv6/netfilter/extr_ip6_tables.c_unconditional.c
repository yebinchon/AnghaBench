
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uncond ;
struct ip6t_ip6 {int dummy; } ;
struct ip6t_entry {int target_offset; int ipv6; } ;


 scalar_t__ memcmp (int *,struct ip6t_ip6 const*,int) ;

__attribute__((used)) static inline bool unconditional(const struct ip6t_entry *e)
{
 static const struct ip6t_ip6 uncond;

 return e->target_offset == sizeof(struct ip6t_entry) &&
        memcmp(&e->ipv6, &uncond, sizeof(uncond)) == 0;
}
