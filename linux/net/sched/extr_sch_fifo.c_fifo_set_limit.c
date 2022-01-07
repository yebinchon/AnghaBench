
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tc_fifo_qopt {unsigned int limit; } ;
struct nlattr {int nla_len; int nla_type; } ;
struct Qdisc {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* change ) (struct Qdisc*,struct nlattr*,int *) ;scalar_t__ id; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int RTM_NEWQDISC ;
 int kfree (struct nlattr*) ;
 struct nlattr* kmalloc (int ,int ) ;
 int nla_attr_size (int) ;
 scalar_t__ nla_data (struct nlattr*) ;
 scalar_t__ strncmp (scalar_t__,char*,int) ;
 int stub1 (struct Qdisc*,struct nlattr*,int *) ;

int fifo_set_limit(struct Qdisc *q, unsigned int limit)
{
 struct nlattr *nla;
 int ret = -ENOMEM;


 if (strncmp(q->ops->id + 1, "fifo", 4) != 0)
  return 0;

 nla = kmalloc(nla_attr_size(sizeof(struct tc_fifo_qopt)), GFP_KERNEL);
 if (nla) {
  nla->nla_type = RTM_NEWQDISC;
  nla->nla_len = nla_attr_size(sizeof(struct tc_fifo_qopt));
  ((struct tc_fifo_qopt *)nla_data(nla))->limit = limit;

  ret = q->ops->change(q, nla, ((void*)0));
  kfree(nla);
 }
 return ret;
}
