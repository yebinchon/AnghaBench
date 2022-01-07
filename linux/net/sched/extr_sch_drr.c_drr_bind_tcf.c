
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drr_class {int filter_cnt; } ;
struct Qdisc {int dummy; } ;


 struct drr_class* drr_find_class (struct Qdisc*,int ) ;

__attribute__((used)) static unsigned long drr_bind_tcf(struct Qdisc *sch, unsigned long parent,
      u32 classid)
{
 struct drr_class *cl = drr_find_class(sch, classid);

 if (cl != ((void*)0))
  cl->filter_cnt++;

 return (unsigned long)cl;
}
