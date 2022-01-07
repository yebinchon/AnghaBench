
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int flags; int dim; } ;
struct TYPE_10__ {TYPE_3__ compat; } ;
struct TYPE_12__ {scalar_t__ index; TYPE_4__ u; } ;
struct TYPE_7__ {int flags; int dim; } ;
struct TYPE_8__ {TYPE_1__ compat; } ;
struct TYPE_11__ {scalar_t__ index; TYPE_2__ u; } ;
struct xt_set_info_target_v0 {TYPE_6__ del_set; TYPE_5__ add_set; } ;
struct xt_action_param {struct xt_set_info_target_v0* targinfo; } ;
struct sk_buff {int dummy; } ;


 int ADT_OPT (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 scalar_t__ IPSET_INVALID_ID ;
 int UINT_MAX ;
 unsigned int XT_CONTINUE ;
 int add_opt ;
 int del_opt ;
 int ip_set_add (scalar_t__,struct sk_buff*,struct xt_action_param const*,int *) ;
 int ip_set_del (scalar_t__,struct sk_buff*,struct xt_action_param const*,int *) ;
 int xt_family (struct xt_action_param const*) ;

__attribute__((used)) static unsigned int
set_target_v0(struct sk_buff *skb, const struct xt_action_param *par)
{
 const struct xt_set_info_target_v0 *info = par->targinfo;

 ADT_OPT(add_opt, xt_family(par), info->add_set.u.compat.dim,
  info->add_set.u.compat.flags, 0, UINT_MAX,
  0, 0, 0, 0);
 ADT_OPT(del_opt, xt_family(par), info->del_set.u.compat.dim,
  info->del_set.u.compat.flags, 0, UINT_MAX,
  0, 0, 0, 0);

 if (info->add_set.index != IPSET_INVALID_ID)
  ip_set_add(info->add_set.index, skb, par, &add_opt);
 if (info->del_set.index != IPSET_INVALID_ID)
  ip_set_del(info->del_set.index, skb, par, &del_opt);

 return XT_CONTINUE;
}
