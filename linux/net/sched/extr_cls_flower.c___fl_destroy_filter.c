
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cls_fl_filter {int exts; } ;


 int kfree (struct cls_fl_filter*) ;
 int tcf_exts_destroy (int *) ;
 int tcf_exts_put_net (int *) ;

__attribute__((used)) static void __fl_destroy_filter(struct cls_fl_filter *f)
{
 tcf_exts_destroy(&f->exts);
 tcf_exts_put_net(&f->exts);
 kfree(f);
}
