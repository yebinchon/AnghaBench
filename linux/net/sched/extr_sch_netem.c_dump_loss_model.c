
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tc_netem_gimodel {int k1; int h; int r; int p; int p23; int p14; int p32; int p31; int p13; } ;
struct tc_netem_gemodel {int k1; int h; int r; int p; int p23; int p14; int p32; int p31; int p13; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct TYPE_2__ {int a4; int a3; int a2; int a1; int a5; } ;
struct netem_sched_data {int loss_model; TYPE_1__ clg; } ;
typedef int gi ;
typedef int ge ;





 int NETEM_LOSS_GE ;
 int NETEM_LOSS_GI ;
 int TCA_NETEM_LOSS ;
 int nla_nest_cancel (struct sk_buff*,struct nlattr*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start_noflag (struct sk_buff*,int ) ;
 int nla_put (struct sk_buff*,int ,int,struct tc_netem_gimodel*) ;

__attribute__((used)) static int dump_loss_model(const struct netem_sched_data *q,
      struct sk_buff *skb)
{
 struct nlattr *nest;

 nest = nla_nest_start_noflag(skb, TCA_NETEM_LOSS);
 if (nest == ((void*)0))
  goto nla_put_failure;

 switch (q->loss_model) {
 case 128:

  nla_nest_cancel(skb, nest);
  return 0;

 case 130: {
  struct tc_netem_gimodel gi = {
   .p13 = q->clg.a1,
   .p31 = q->clg.a2,
   .p32 = q->clg.a3,
   .p14 = q->clg.a4,
   .p23 = q->clg.a5,
  };

  if (nla_put(skb, NETEM_LOSS_GI, sizeof(gi), &gi))
   goto nla_put_failure;
  break;
 }
 case 129: {
  struct tc_netem_gemodel ge = {
   .p = q->clg.a1,
   .r = q->clg.a2,
   .h = q->clg.a3,
   .k1 = q->clg.a4,
  };

  if (nla_put(skb, NETEM_LOSS_GE, sizeof(ge), &ge))
   goto nla_put_failure;
  break;
 }
 }

 nla_nest_end(skb, nest);
 return 0;

nla_put_failure:
 nla_nest_cancel(skb, nest);
 return -1;
}
