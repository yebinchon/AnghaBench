
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audit_tree_refs {int * c; struct audit_tree_refs* next; } ;
struct audit_tree {int dummy; } ;
struct audit_context {int tree_count; struct audit_tree_refs* trees; struct audit_tree_refs* first_trees; } ;


 scalar_t__ audit_tree_match (int ,struct audit_tree*) ;

__attribute__((used)) static int match_tree_refs(struct audit_context *ctx, struct audit_tree *tree)
{
 struct audit_tree_refs *p;
 int n;
 if (!tree)
  return 0;

 for (p = ctx->first_trees; p != ctx->trees; p = p->next) {
  for (n = 0; n < 31; n++)
   if (audit_tree_match(p->c[n], tree))
    return 1;
 }

 if (p) {
  for (n = ctx->tree_count; n < 31; n++)
   if (audit_tree_match(p->c[n], tree))
    return 1;
 }
 return 0;
}
