
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_nfacct_match_info {struct nf_acct* nfacct; int name; } ;
struct xt_mtchk_param {int net; struct xt_nfacct_match_info* matchinfo; } ;
struct nf_acct {int dummy; } ;


 int ENOENT ;
 struct nf_acct* nfnl_acct_find_get (int ,int ) ;
 int pr_info_ratelimited (char*,int ) ;

__attribute__((used)) static int
nfacct_mt_checkentry(const struct xt_mtchk_param *par)
{
 struct xt_nfacct_match_info *info = par->matchinfo;
 struct nf_acct *nfacct;

 nfacct = nfnl_acct_find_get(par->net, info->name);
 if (nfacct == ((void*)0)) {
  pr_info_ratelimited("accounting object `%s' does not exists\n",
        info->name);
  return -ENOENT;
 }
 info->nfacct = nfacct;
 return 0;
}
