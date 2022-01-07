
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dsmark_qdisc_data {TYPE_1__* mv; } ;
struct Qdisc {int dummy; } ;
struct TYPE_2__ {int mask; scalar_t__ value; } ;


 int EINVAL ;
 int dsmark_valid_index (struct dsmark_qdisc_data*,unsigned long) ;
 struct dsmark_qdisc_data* qdisc_priv (struct Qdisc*) ;

__attribute__((used)) static int dsmark_delete(struct Qdisc *sch, unsigned long arg)
{
 struct dsmark_qdisc_data *p = qdisc_priv(sch);

 if (!dsmark_valid_index(p, arg))
  return -EINVAL;

 p->mv[arg - 1].mask = 0xff;
 p->mv[arg - 1].value = 0;

 return 0;
}
