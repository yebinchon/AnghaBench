
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_mtchk_param {int family; int net; struct xt_helper_info* matchinfo; } ;
struct xt_helper_info {char* name; } ;


 int nf_ct_netns_get (int ,int ) ;
 int pr_info_ratelimited (char*,int ) ;

__attribute__((used)) static int helper_mt_check(const struct xt_mtchk_param *par)
{
 struct xt_helper_info *info = par->matchinfo;
 int ret;

 ret = nf_ct_netns_get(par->net, par->family);
 if (ret < 0) {
  pr_info_ratelimited("cannot load conntrack support for proto=%u\n",
        par->family);
  return ret;
 }
 info->name[sizeof(info->name) - 1] = '\0';
 return 0;
}
