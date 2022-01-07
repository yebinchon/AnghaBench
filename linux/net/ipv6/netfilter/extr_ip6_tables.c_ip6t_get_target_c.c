
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_entry_target {int dummy; } ;
struct ip6t_entry {int dummy; } ;


 struct xt_entry_target const* ip6t_get_target (struct ip6t_entry*) ;

__attribute__((used)) static inline const struct xt_entry_target *
ip6t_get_target_c(const struct ip6t_entry *e)
{
 return ip6t_get_target((struct ip6t_entry *)e);
}
