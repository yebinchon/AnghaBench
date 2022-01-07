
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_nfacct_match_info {int nfacct; } ;
struct xt_action_param {struct xt_nfacct_match_info* targinfo; } ;
struct sk_buff {int dummy; } ;


 int NFACCT_UNDERQUOTA ;
 int nfnl_acct_overquota (int ,int ) ;
 int nfnl_acct_update (struct sk_buff const*,int ) ;
 int xt_net (struct xt_action_param*) ;

__attribute__((used)) static bool nfacct_mt(const struct sk_buff *skb, struct xt_action_param *par)
{
 int overquota;
 const struct xt_nfacct_match_info *info = par->targinfo;

 nfnl_acct_update(skb, info->nfacct);

 overquota = nfnl_acct_overquota(xt_net(par), info->nfacct);

 return overquota == NFACCT_UNDERQUOTA ? 0 : 1;
}
