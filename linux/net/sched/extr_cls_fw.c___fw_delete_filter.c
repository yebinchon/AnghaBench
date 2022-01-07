
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_filter {int exts; } ;


 int kfree (struct fw_filter*) ;
 int tcf_exts_destroy (int *) ;
 int tcf_exts_put_net (int *) ;

__attribute__((used)) static void __fw_delete_filter(struct fw_filter *f)
{
 tcf_exts_destroy(&f->exts);
 tcf_exts_put_net(&f->exts);
 kfree(f);
}
