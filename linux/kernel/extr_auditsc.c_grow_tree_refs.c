
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audit_tree_refs {struct audit_tree_refs* next; } ;
struct audit_context {int tree_count; struct audit_tree_refs* trees; struct audit_tree_refs* first_trees; } ;


 int GFP_KERNEL ;
 struct audit_tree_refs* kzalloc (int,int ) ;

__attribute__((used)) static int grow_tree_refs(struct audit_context *ctx)
{
 struct audit_tree_refs *p = ctx->trees;
 ctx->trees = kzalloc(sizeof(struct audit_tree_refs), GFP_KERNEL);
 if (!ctx->trees) {
  ctx->trees = p;
  return 0;
 }
 if (p)
  p->next = ctx->trees;
 else
  ctx->first_trees = ctx->trees;
 ctx->tree_count = 31;
 return 1;
}
