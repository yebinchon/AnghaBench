
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct bb_node {int l; int e_succs; int e_prevs; } ;


 int INIT_LIST_HEAD (int *) ;
 struct bb_node* calloc (int,int) ;
 int list_add (int *,struct list_head*) ;
 int p_err (char*) ;

__attribute__((used)) static struct bb_node *func_insert_dummy_bb(struct list_head *after)
{
 struct bb_node *bb;

 bb = calloc(1, sizeof(*bb));
 if (!bb) {
  p_err("OOM when allocating BB node");
  return ((void*)0);
 }

 INIT_LIST_HEAD(&bb->e_prevs);
 INIT_LIST_HEAD(&bb->e_succs);
 list_add(&bb->l, after);

 return bb;
}
