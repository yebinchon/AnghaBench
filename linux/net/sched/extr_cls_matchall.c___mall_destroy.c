
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cls_mall_head {int pf; int exts; } ;


 int free_percpu (int ) ;
 int kfree (struct cls_mall_head*) ;
 int tcf_exts_destroy (int *) ;
 int tcf_exts_put_net (int *) ;

__attribute__((used)) static void __mall_destroy(struct cls_mall_head *head)
{
 tcf_exts_destroy(&head->exts);
 tcf_exts_put_net(&head->exts);
 free_percpu(head->pf);
 kfree(head);
}
