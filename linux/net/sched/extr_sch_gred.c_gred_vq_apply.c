
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct nlattr {int dummy; } ;
struct gred_sched {TYPE_1__** tab; } ;
struct TYPE_2__ {void* red_flags; } ;


 size_t TCA_GRED_VQ_DP ;
 size_t TCA_GRED_VQ_FLAGS ;
 int TCA_GRED_VQ_MAX ;
 int gred_vq_policy ;
 void* nla_get_u32 (struct nlattr*) ;
 int nla_parse_nested_deprecated (struct nlattr**,int ,struct nlattr const*,int ,int *) ;

__attribute__((used)) static void gred_vq_apply(struct gred_sched *table, const struct nlattr *entry)
{
 struct nlattr *tb[TCA_GRED_VQ_MAX + 1];
 u32 dp;

 nla_parse_nested_deprecated(tb, TCA_GRED_VQ_MAX, entry,
        gred_vq_policy, ((void*)0));

 dp = nla_get_u32(tb[TCA_GRED_VQ_DP]);

 if (tb[TCA_GRED_VQ_FLAGS])
  table->tab[dp]->red_flags = nla_get_u32(tb[TCA_GRED_VQ_FLAGS]);
}
