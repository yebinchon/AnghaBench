
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hfsc_class {scalar_t__ level; int filter_cnt; } ;
struct Qdisc {int dummy; } ;


 struct hfsc_class* hfsc_find_class (int ,struct Qdisc*) ;

__attribute__((used)) static unsigned long
hfsc_bind_tcf(struct Qdisc *sch, unsigned long parent, u32 classid)
{
 struct hfsc_class *p = (struct hfsc_class *)parent;
 struct hfsc_class *cl = hfsc_find_class(classid, sch);

 if (cl != ((void*)0)) {
  if (p != ((void*)0) && p->level <= cl->level)
   return 0;
  cl->filter_cnt++;
 }

 return (unsigned long)cl;
}
