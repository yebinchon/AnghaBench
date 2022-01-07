
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_mtchk_param {int const family; int net; struct xt_connlabel_mtinfo* matchinfo; } ;
struct xt_connlabel_mtinfo {int const options; int bit; } ;


 int EINVAL ;
 int XT_CONNLABEL_OP_INVERT ;
 int XT_CONNLABEL_OP_SET ;
 int nf_connlabels_get (int ,int ) ;
 int nf_ct_netns_get (int ,int const) ;
 int nf_ct_netns_put (int ,int const) ;
 int pr_info_ratelimited (char*,int const) ;

__attribute__((used)) static int connlabel_mt_check(const struct xt_mtchk_param *par)
{
 const int options = XT_CONNLABEL_OP_INVERT |
       XT_CONNLABEL_OP_SET;
 struct xt_connlabel_mtinfo *info = par->matchinfo;
 int ret;

 if (info->options & ~options) {
  pr_info_ratelimited("Unknown options in mask %x\n",
        info->options);
  return -EINVAL;
 }

 ret = nf_ct_netns_get(par->net, par->family);
 if (ret < 0) {
  pr_info_ratelimited("cannot load conntrack support for proto=%u\n",
        par->family);
  return ret;
 }

 ret = nf_connlabels_get(par->net, info->bit);
 if (ret < 0)
  nf_ct_netns_put(par->net, par->family);
 return ret;
}
