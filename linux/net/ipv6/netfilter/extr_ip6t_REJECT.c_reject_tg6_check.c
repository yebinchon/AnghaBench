
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xt_tgchk_param {struct ip6t_entry* entryinfo; struct ip6t_reject_info* targinfo; } ;
struct ip6t_reject_info {scalar_t__ with; } ;
struct TYPE_2__ {int flags; scalar_t__ proto; int invflags; } ;
struct ip6t_entry {TYPE_1__ ipv6; } ;


 int EINVAL ;
 int IP6T_F_PROTO ;
 scalar_t__ IP6T_ICMP6_ECHOREPLY ;
 scalar_t__ IP6T_TCP_RESET ;
 scalar_t__ IPPROTO_TCP ;
 int XT_INV_PROTO ;
 int pr_info_ratelimited (char*) ;

__attribute__((used)) static int reject_tg6_check(const struct xt_tgchk_param *par)
{
 const struct ip6t_reject_info *rejinfo = par->targinfo;
 const struct ip6t_entry *e = par->entryinfo;

 if (rejinfo->with == IP6T_ICMP6_ECHOREPLY) {
  pr_info_ratelimited("ECHOREPLY is not supported\n");
  return -EINVAL;
 } else if (rejinfo->with == IP6T_TCP_RESET) {

  if (!(e->ipv6.flags & IP6T_F_PROTO) ||
      e->ipv6.proto != IPPROTO_TCP ||
      (e->ipv6.invflags & XT_INV_PROTO)) {
   pr_info_ratelimited("TCP_RESET illegal for non-tcp\n");
   return -EINVAL;
  }
 }
 return 0;
}
