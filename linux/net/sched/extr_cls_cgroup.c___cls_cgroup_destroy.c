
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cls_cgroup_head {int exts; int ematches; } ;


 int kfree (struct cls_cgroup_head*) ;
 int tcf_em_tree_destroy (int *) ;
 int tcf_exts_destroy (int *) ;
 int tcf_exts_put_net (int *) ;

__attribute__((used)) static void __cls_cgroup_destroy(struct cls_cgroup_head *head)
{
 tcf_exts_destroy(&head->exts);
 tcf_em_tree_destroy(&head->ematches);
 tcf_exts_put_net(&head->exts);
 kfree(head);
}
