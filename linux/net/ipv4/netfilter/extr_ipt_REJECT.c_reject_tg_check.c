
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xt_tgchk_param {struct ipt_entry* entryinfo; struct ipt_reject_info* targinfo; } ;
struct ipt_reject_info {scalar_t__ with; } ;
struct TYPE_2__ {scalar_t__ proto; int invflags; } ;
struct ipt_entry {TYPE_1__ ip; } ;


 int EINVAL ;
 scalar_t__ IPPROTO_TCP ;
 scalar_t__ IPT_ICMP_ECHOREPLY ;
 scalar_t__ IPT_TCP_RESET ;
 int XT_INV_PROTO ;
 int pr_info_ratelimited (char*) ;

__attribute__((used)) static int reject_tg_check(const struct xt_tgchk_param *par)
{
 const struct ipt_reject_info *rejinfo = par->targinfo;
 const struct ipt_entry *e = par->entryinfo;

 if (rejinfo->with == IPT_ICMP_ECHOREPLY) {
  pr_info_ratelimited("ECHOREPLY no longer supported.\n");
  return -EINVAL;
 } else if (rejinfo->with == IPT_TCP_RESET) {

  if (e->ip.proto != IPPROTO_TCP ||
      (e->ip.invflags & XT_INV_PROTO)) {
   pr_info_ratelimited("TCP_RESET invalid for non-tcp\n");
   return -EINVAL;
  }
 }
 return 0;
}
