
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drr_class {int alist; } ;
struct Qdisc {int dummy; } ;


 int list_del (int *) ;

__attribute__((used)) static void drr_qlen_notify(struct Qdisc *csh, unsigned long arg)
{
 struct drr_class *cl = (struct drr_class *)arg;

 list_del(&cl->alist);
}
