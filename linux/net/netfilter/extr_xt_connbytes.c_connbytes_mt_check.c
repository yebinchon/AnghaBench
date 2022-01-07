
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_mtchk_param {int net; int family; struct xt_connbytes_info* matchinfo; } ;
struct xt_connbytes_info {scalar_t__ what; scalar_t__ direction; } ;


 int EINVAL ;
 scalar_t__ XT_CONNBYTES_AVGPKT ;
 scalar_t__ XT_CONNBYTES_BYTES ;
 scalar_t__ XT_CONNBYTES_DIR_BOTH ;
 scalar_t__ XT_CONNBYTES_DIR_ORIGINAL ;
 scalar_t__ XT_CONNBYTES_DIR_REPLY ;
 scalar_t__ XT_CONNBYTES_PKTS ;
 int nf_ct_acct_enabled (int ) ;
 int nf_ct_netns_get (int ,int ) ;
 int nf_ct_set_acct (int ,int) ;
 int pr_info_ratelimited (char*,int ) ;
 int pr_warn (char*) ;

__attribute__((used)) static int connbytes_mt_check(const struct xt_mtchk_param *par)
{
 const struct xt_connbytes_info *sinfo = par->matchinfo;
 int ret;

 if (sinfo->what != XT_CONNBYTES_PKTS &&
     sinfo->what != XT_CONNBYTES_BYTES &&
     sinfo->what != XT_CONNBYTES_AVGPKT)
  return -EINVAL;

 if (sinfo->direction != XT_CONNBYTES_DIR_ORIGINAL &&
     sinfo->direction != XT_CONNBYTES_DIR_REPLY &&
     sinfo->direction != XT_CONNBYTES_DIR_BOTH)
  return -EINVAL;

 ret = nf_ct_netns_get(par->net, par->family);
 if (ret < 0)
  pr_info_ratelimited("cannot load conntrack support for proto=%u\n",
        par->family);





 if (!nf_ct_acct_enabled(par->net)) {
  pr_warn("Forcing CT accounting to be enabled\n");
  nf_ct_set_acct(par->net, 1);
 }

 return ret;
}
