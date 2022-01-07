
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfsc_class {int cl_flags; } ;
struct Qdisc {int dummy; } ;


 int HFSC_RSC ;
 int eltree_remove (struct hfsc_class*) ;
 int update_vf (struct hfsc_class*,int ,int ) ;

__attribute__((used)) static void
hfsc_qlen_notify(struct Qdisc *sch, unsigned long arg)
{
 struct hfsc_class *cl = (struct hfsc_class *)arg;




 update_vf(cl, 0, 0);
 if (cl->cl_flags & HFSC_RSC)
  eltree_remove(cl);
}
