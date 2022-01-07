
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_hashlimit_mtinfo3 {int cfg; struct xt_hashlimit_htable* hinfo; } ;
struct xt_hashlimit_htable {int dummy; } ;
struct xt_action_param {struct xt_hashlimit_mtinfo3* matchinfo; } ;
struct sk_buff {int dummy; } ;


 int hashlimit_mt_common (struct sk_buff const*,struct xt_action_param*,struct xt_hashlimit_htable*,int *,int) ;

__attribute__((used)) static bool
hashlimit_mt(const struct sk_buff *skb, struct xt_action_param *par)
{
 const struct xt_hashlimit_mtinfo3 *info = par->matchinfo;
 struct xt_hashlimit_htable *hinfo = info->hinfo;

 return hashlimit_mt_common(skb, par, hinfo, &info->cfg, 3);
}
