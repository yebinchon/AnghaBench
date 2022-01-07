
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audit_tree_refs {struct audit_tree_refs* next; } ;
struct audit_context {struct audit_tree_refs* first_trees; } ;


 int kfree (struct audit_tree_refs*) ;

__attribute__((used)) static void free_tree_refs(struct audit_context *ctx)
{
 struct audit_tree_refs *p, *q;
 for (p = ctx->first_trees; p; p = q) {
  q = p->next;
  kfree(p);
 }
}
