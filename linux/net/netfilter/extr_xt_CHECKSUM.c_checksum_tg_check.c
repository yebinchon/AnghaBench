
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_tgchk_param {int family; struct ipt_ip* entryinfo; struct xt_CHECKSUM_info* targinfo; } ;
struct xt_CHECKSUM_info {int operation; } ;
struct ipt_ip {int invflags; int flags; int proto; } ;
struct ip6t_ip6 {int invflags; int flags; int proto; } ;


 int EINVAL ;
 int IP6T_F_PROTO ;
 int IPPROTO_UDP ;


 int XT_CHECKSUM_OP_FILL ;
 int XT_INV_PROTO ;
 int pr_info_ratelimited (char*,int) ;
 int pr_warn_once (char*) ;

__attribute__((used)) static int checksum_tg_check(const struct xt_tgchk_param *par)
{
 const struct xt_CHECKSUM_info *einfo = par->targinfo;
 const struct ip6t_ip6 *i6 = par->entryinfo;
 const struct ipt_ip *i4 = par->entryinfo;

 if (einfo->operation & ~XT_CHECKSUM_OP_FILL) {
  pr_info_ratelimited("unsupported CHECKSUM operation %x\n",
        einfo->operation);
  return -EINVAL;
 }
 if (!einfo->operation)
  return -EINVAL;

 switch (par->family) {
 case 129:
  if (i4->proto == IPPROTO_UDP &&
      (i4->invflags & XT_INV_PROTO) == 0)
   return 0;
  break;
 case 128:
  if ((i6->flags & IP6T_F_PROTO) &&
      i6->proto == IPPROTO_UDP &&
      (i6->invflags & XT_INV_PROTO) == 0)
   return 0;
  break;
 }

 pr_warn_once("CHECKSUM should be avoided.  If really needed, restrict with \"-p udp\" and only use in OUTPUT\n");
 return 0;
}
