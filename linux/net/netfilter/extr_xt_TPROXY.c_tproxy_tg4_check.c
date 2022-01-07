
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_tgchk_param {int net; struct ipt_ip* entryinfo; } ;
struct ipt_ip {scalar_t__ proto; int invflags; } ;


 int EINVAL ;
 scalar_t__ IPPROTO_TCP ;
 scalar_t__ IPPROTO_UDP ;
 int IPT_INV_PROTO ;
 int nf_defrag_ipv4_enable (int ) ;
 int pr_info_ratelimited (char*) ;

__attribute__((used)) static int tproxy_tg4_check(const struct xt_tgchk_param *par)
{
 const struct ipt_ip *i = par->entryinfo;
 int err;

 err = nf_defrag_ipv4_enable(par->net);
 if (err)
  return err;

 if ((i->proto == IPPROTO_TCP || i->proto == IPPROTO_UDP)
     && !(i->invflags & IPT_INV_PROTO))
  return 0;

 pr_info_ratelimited("Can be used only with -p tcp or -p udp\n");
 return -EINVAL;
}
