
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ index; int flags; int dim; } ;
struct TYPE_10__ {scalar_t__ index; int flags; int dim; } ;
struct xt_set_info_target_v2 {TYPE_3__ del_set; TYPE_2__ add_set; int timeout; int flags; } ;
struct xt_action_param {struct xt_set_info_target_v2* targinfo; } ;
struct sk_buff {int dummy; } ;
struct TYPE_9__ {scalar_t__ timeout; } ;
struct TYPE_12__ {TYPE_1__ ext; } ;


 int ADT_OPT (TYPE_4__,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 scalar_t__ IPSET_INVALID_ID ;
 scalar_t__ IPSET_MAX_TIMEOUT ;
 scalar_t__ IPSET_NO_TIMEOUT ;
 int UINT_MAX ;
 unsigned int XT_CONTINUE ;
 TYPE_4__ add_opt ;
 TYPE_4__ del_opt ;
 int ip_set_add (scalar_t__,struct sk_buff*,struct xt_action_param const*,TYPE_4__*) ;
 int ip_set_del (scalar_t__,struct sk_buff*,struct xt_action_param const*,TYPE_4__*) ;
 int xt_family (struct xt_action_param const*) ;

__attribute__((used)) static unsigned int
set_target_v2(struct sk_buff *skb, const struct xt_action_param *par)
{
 const struct xt_set_info_target_v2 *info = par->targinfo;

 ADT_OPT(add_opt, xt_family(par), info->add_set.dim,
  info->add_set.flags, info->flags, info->timeout,
  0, 0, 0, 0);
 ADT_OPT(del_opt, xt_family(par), info->del_set.dim,
  info->del_set.flags, 0, UINT_MAX,
  0, 0, 0, 0);


 if (add_opt.ext.timeout != IPSET_NO_TIMEOUT &&
     add_opt.ext.timeout > IPSET_MAX_TIMEOUT)
  add_opt.ext.timeout = IPSET_MAX_TIMEOUT;
 if (info->add_set.index != IPSET_INVALID_ID)
  ip_set_add(info->add_set.index, skb, par, &add_opt);
 if (info->del_set.index != IPSET_INVALID_ID)
  ip_set_del(info->del_set.index, skb, par, &del_opt);

 return XT_CONTINUE;
}
