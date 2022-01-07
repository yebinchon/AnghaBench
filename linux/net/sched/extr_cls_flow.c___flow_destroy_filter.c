
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flow_filter {int exts; int ematches; int perturb_timer; } ;


 int del_timer_sync (int *) ;
 int kfree (struct flow_filter*) ;
 int tcf_em_tree_destroy (int *) ;
 int tcf_exts_destroy (int *) ;
 int tcf_exts_put_net (int *) ;

__attribute__((used)) static void __flow_destroy_filter(struct flow_filter *f)
{
 del_timer_sync(&f->perturb_timer);
 tcf_exts_destroy(&f->exts);
 tcf_em_tree_destroy(&f->ematches);
 tcf_exts_put_net(&f->exts);
 kfree(f);
}
