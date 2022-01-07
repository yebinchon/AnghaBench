
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct Qdisc {int flags; int handle; TYPE_1__* ops; } ;
struct TYPE_2__ {int id; } ;


 int TCQ_F_WARN_NONWC ;
 int pr_warn (char*,char const*,int ,int) ;

void qdisc_warn_nonwc(const char *txt, struct Qdisc *qdisc)
{
 if (!(qdisc->flags & TCQ_F_WARN_NONWC)) {
  pr_warn("%s: %s qdisc %X: is non-work-conserving?\n",
   txt, qdisc->ops->id, qdisc->handle >> 16);
  qdisc->flags |= TCQ_F_WARN_NONWC;
 }
}
