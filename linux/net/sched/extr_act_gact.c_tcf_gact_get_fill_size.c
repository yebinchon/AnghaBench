
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tc_gact_p {int dummy; } ;
struct tc_gact {int dummy; } ;
struct tc_action {int dummy; } ;
struct TYPE_2__ {scalar_t__ tcfg_ptype; } ;


 size_t nla_total_size (int) ;
 TYPE_1__* to_gact (struct tc_action const*) ;

__attribute__((used)) static size_t tcf_gact_get_fill_size(const struct tc_action *act)
{
 size_t sz = nla_total_size(sizeof(struct tc_gact));







 return sz;
}
