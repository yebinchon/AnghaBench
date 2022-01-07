
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc_netem_corr {int dup_corr; int loss_corr; int delay_corr; } ;
struct nlattr {int dummy; } ;
struct netem_sched_data {int dup_cor; int loss_cor; int delay_cor; } ;


 int init_crandom (int *,int ) ;
 struct tc_netem_corr* nla_data (struct nlattr const*) ;

__attribute__((used)) static void get_correlation(struct netem_sched_data *q, const struct nlattr *attr)
{
 const struct tc_netem_corr *c = nla_data(attr);

 init_crandom(&q->delay_cor, c->delay_corr);
 init_crandom(&q->loss_cor, c->loss_corr);
 init_crandom(&q->dup_cor, c->dup_corr);
}
