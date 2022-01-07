
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xt_tgdtor_param {int net; struct xt_set_info_target_v1* targinfo; } ;
struct TYPE_4__ {scalar_t__ index; } ;
struct TYPE_3__ {scalar_t__ index; } ;
struct xt_set_info_target_v1 {TYPE_2__ del_set; TYPE_1__ add_set; } ;


 scalar_t__ IPSET_INVALID_ID ;
 int ip_set_nfnl_put (int ,scalar_t__) ;

__attribute__((used)) static void
set_target_v1_destroy(const struct xt_tgdtor_param *par)
{
 const struct xt_set_info_target_v1 *info = par->targinfo;

 if (info->add_set.index != IPSET_INVALID_ID)
  ip_set_nfnl_put(par->net, info->add_set.index);
 if (info->del_set.index != IPSET_INVALID_ID)
  ip_set_nfnl_put(par->net, info->del_set.index);
}
