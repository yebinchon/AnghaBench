
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct Qdisc_class_ops {unsigned long (* find ) (struct Qdisc*,int ) ;struct Qdisc* (* leaf ) (struct Qdisc*,unsigned long) ;} ;
struct Qdisc {TYPE_1__* ops; } ;
struct TYPE_2__ {struct Qdisc_class_ops* cl_ops; } ;


 unsigned long stub1 (struct Qdisc*,int ) ;
 struct Qdisc* stub2 (struct Qdisc*,unsigned long) ;

__attribute__((used)) static struct Qdisc *qdisc_leaf(struct Qdisc *p, u32 classid)
{
 unsigned long cl;
 const struct Qdisc_class_ops *cops = p->ops->cl_ops;

 if (cops == ((void*)0))
  return ((void*)0);
 cl = cops->find(p, classid);

 if (cl == 0)
  return ((void*)0);
 return cops->leaf(p, cl);
}
