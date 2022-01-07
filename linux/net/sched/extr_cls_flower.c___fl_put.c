
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cls_fl_filter {int rwork; int exts; int refcnt; } ;


 int __fl_destroy_filter (struct cls_fl_filter*) ;
 int fl_destroy_filter_work ;
 int refcount_dec_and_test (int *) ;
 scalar_t__ tcf_exts_get_net (int *) ;
 int tcf_queue_work (int *,int ) ;

__attribute__((used)) static void __fl_put(struct cls_fl_filter *f)
{
 if (!refcount_dec_and_test(&f->refcnt))
  return;

 if (tcf_exts_get_net(&f->exts))
  tcf_queue_work(&f->rwork, fl_destroy_filter_work);
 else
  __fl_destroy_filter(f);
}
