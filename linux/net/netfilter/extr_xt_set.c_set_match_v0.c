
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int flags; int dim; } ;
struct TYPE_6__ {TYPE_2__ compat; } ;
struct TYPE_4__ {TYPE_3__ u; int index; } ;
struct xt_set_info_match_v0 {TYPE_1__ match_set; } ;
struct xt_action_param {struct xt_set_info_match_v0* matchinfo; } ;
struct sk_buff {int dummy; } ;


 int ADT_OPT (int ,int ,int ,int,int ,int ,int ,int ,int ,int ) ;
 int IPSET_INV_MATCH ;
 int UINT_MAX ;
 int match_set (int ,struct sk_buff const*,struct xt_action_param*,int *,int) ;
 int opt ;
 int xt_family (struct xt_action_param*) ;

__attribute__((used)) static bool
set_match_v0(const struct sk_buff *skb, struct xt_action_param *par)
{
 const struct xt_set_info_match_v0 *info = par->matchinfo;

 ADT_OPT(opt, xt_family(par), info->match_set.u.compat.dim,
  info->match_set.u.compat.flags, 0, UINT_MAX,
  0, 0, 0, 0);

 return match_set(info->match_set.index, skb, par, &opt,
    info->match_set.u.compat.flags & IPSET_INV_MATCH);
}
