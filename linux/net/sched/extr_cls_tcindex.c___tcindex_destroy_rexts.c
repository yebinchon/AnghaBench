
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcindex_filter_result {int exts; } ;


 int tcf_exts_destroy (int *) ;
 int tcf_exts_put_net (int *) ;

__attribute__((used)) static void __tcindex_destroy_rexts(struct tcindex_filter_result *r)
{
 tcf_exts_destroy(&r->exts);
 tcf_exts_put_net(&r->exts);
}
