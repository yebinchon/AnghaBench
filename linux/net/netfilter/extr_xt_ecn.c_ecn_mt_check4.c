
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_mtchk_param {struct ipt_ip* entryinfo; struct xt_ecn_info* matchinfo; } ;
struct xt_ecn_info {int operation; int invert; } ;
struct ipt_ip {scalar_t__ proto; int invflags; } ;


 int EINVAL ;
 scalar_t__ IPPROTO_TCP ;
 int IPT_INV_PROTO ;
 int XT_ECN_OP_MATCH_CWR ;
 int XT_ECN_OP_MATCH_ECE ;
 int XT_ECN_OP_MATCH_MASK ;
 int pr_info_ratelimited (char*) ;

__attribute__((used)) static int ecn_mt_check4(const struct xt_mtchk_param *par)
{
 const struct xt_ecn_info *info = par->matchinfo;
 const struct ipt_ip *ip = par->entryinfo;

 if (info->operation & XT_ECN_OP_MATCH_MASK)
  return -EINVAL;

 if (info->invert & XT_ECN_OP_MATCH_MASK)
  return -EINVAL;

 if (info->operation & (XT_ECN_OP_MATCH_ECE | XT_ECN_OP_MATCH_CWR) &&
     (ip->proto != IPPROTO_TCP || ip->invflags & IPT_INV_PROTO)) {
  pr_info_ratelimited("cannot match TCP bits for non-tcp packets\n");
  return -EINVAL;
 }

 return 0;
}
