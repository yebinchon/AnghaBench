
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfsc_class {int filter_cnt; } ;
struct Qdisc {int dummy; } ;



__attribute__((used)) static void
hfsc_unbind_tcf(struct Qdisc *sch, unsigned long arg)
{
 struct hfsc_class *cl = (struct hfsc_class *)arg;

 cl->filter_cnt--;
}
