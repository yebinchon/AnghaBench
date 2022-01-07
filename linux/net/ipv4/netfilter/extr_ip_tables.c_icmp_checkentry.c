
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_mtchk_param {struct ipt_icmp* matchinfo; } ;
struct ipt_icmp {int invflags; } ;


 int EINVAL ;
 int IPT_ICMP_INV ;

__attribute__((used)) static int icmp_checkentry(const struct xt_mtchk_param *par)
{
 const struct ipt_icmp *icmpinfo = par->matchinfo;


 return (icmpinfo->invflags & ~IPT_ICMP_INV) ? -EINVAL : 0;
}
