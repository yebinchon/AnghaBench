
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc_netem_corrupt {int correlation; int probability; } ;
struct nlattr {int dummy; } ;
struct netem_sched_data {int corrupt_cor; int corrupt; } ;


 int init_crandom (int *,int ) ;
 struct tc_netem_corrupt* nla_data (struct nlattr const*) ;

__attribute__((used)) static void get_corrupt(struct netem_sched_data *q, const struct nlattr *attr)
{
 const struct tc_netem_corrupt *r = nla_data(attr);

 q->corrupt = r->probability;
 init_crandom(&q->corrupt_cor, r->correlation);
}
