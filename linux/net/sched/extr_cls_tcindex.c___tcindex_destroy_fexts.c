
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int exts; } ;
struct tcindex_filter {TYPE_1__ result; } ;


 int kfree (struct tcindex_filter*) ;
 int tcf_exts_destroy (int *) ;
 int tcf_exts_put_net (int *) ;

__attribute__((used)) static void __tcindex_destroy_fexts(struct tcindex_filter *f)
{
 tcf_exts_destroy(&f->result.exts);
 tcf_exts_put_net(&f->result.exts);
 kfree(f);
}
