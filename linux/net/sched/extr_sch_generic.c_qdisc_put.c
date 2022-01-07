
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Qdisc {int flags; int refcnt; } ;


 int TCQ_F_BUILTIN ;
 int qdisc_destroy (struct Qdisc*) ;
 int refcount_dec_and_test (int *) ;

void qdisc_put(struct Qdisc *qdisc)
{
 if (!qdisc)
  return;

 if (qdisc->flags & TCQ_F_BUILTIN ||
     !refcount_dec_and_test(&qdisc->refcnt))
  return;

 qdisc_destroy(qdisc);
}
