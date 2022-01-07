
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qfq_class {int filter_cnt; } ;
struct Qdisc {int dummy; } ;


 struct qfq_class* qfq_find_class (struct Qdisc*,int ) ;

__attribute__((used)) static unsigned long qfq_bind_tcf(struct Qdisc *sch, unsigned long parent,
      u32 classid)
{
 struct qfq_class *cl = qfq_find_class(sch, classid);

 if (cl != ((void*)0))
  cl->filter_cnt++;

 return (unsigned long)cl;
}
