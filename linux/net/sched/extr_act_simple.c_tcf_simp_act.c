
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcf_result {int dummy; } ;
struct TYPE_2__ {int packets; } ;
struct tcf_defact {int tcf_action; int tcf_lock; TYPE_1__ tcf_bstats; scalar_t__ tcfd_defdata; int tcf_tm; } ;
struct tc_action {int dummy; } ;
struct sk_buff {int dummy; } ;


 int bstats_update (TYPE_1__*,struct sk_buff*) ;
 int pr_info (char*,char*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tcf_lastuse_update (int *) ;
 struct tcf_defact* to_defact (struct tc_action const*) ;

__attribute__((used)) static int tcf_simp_act(struct sk_buff *skb, const struct tc_action *a,
   struct tcf_result *res)
{
 struct tcf_defact *d = to_defact(a);

 spin_lock(&d->tcf_lock);
 tcf_lastuse_update(&d->tcf_tm);
 bstats_update(&d->tcf_bstats, skb);





 pr_info("simple: %s_%d\n",
        (char *)d->tcfd_defdata, d->tcf_bstats.packets);
 spin_unlock(&d->tcf_lock);
 return d->tcf_action;
}
