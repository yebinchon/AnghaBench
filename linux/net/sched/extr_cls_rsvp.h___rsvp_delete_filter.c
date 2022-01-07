
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsvp_filter {int exts; } ;


 int kfree (struct rsvp_filter*) ;
 int tcf_exts_destroy (int *) ;
 int tcf_exts_put_net (int *) ;

__attribute__((used)) static void __rsvp_delete_filter(struct rsvp_filter *f)
{
 tcf_exts_destroy(&f->exts);
 tcf_exts_put_net(&f->exts);
 kfree(f);
}
