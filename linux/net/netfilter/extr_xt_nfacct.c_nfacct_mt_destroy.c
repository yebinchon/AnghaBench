
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_nfacct_match_info {int nfacct; } ;
struct xt_mtdtor_param {struct xt_nfacct_match_info* matchinfo; } ;


 int nfnl_acct_put (int ) ;

__attribute__((used)) static void
nfacct_mt_destroy(const struct xt_mtdtor_param *par)
{
 const struct xt_nfacct_match_info *info = par->matchinfo;

 nfnl_acct_put(info->nfacct);
}
