
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct func_node {int idx; unsigned int start; } ;
struct dump_data {int dummy; } ;
struct bb_node {scalar_t__ idx; unsigned int head; int tail; } ;


 scalar_t__ ENTRY_BLOCK_INDEX ;
 scalar_t__ EXIT_BLOCK_INDEX ;
 int dump_xlated_for_graph (struct dump_data*,unsigned int,int ,unsigned int) ;
 int kernel_syms_destroy (struct dump_data*) ;
 int kernel_syms_load (struct dump_data*) ;
 int printf (char*,...) ;

__attribute__((used)) static void draw_bb_node(struct func_node *func, struct bb_node *bb)
{
 const char *shape;

 if (bb->idx == ENTRY_BLOCK_INDEX || bb->idx == EXIT_BLOCK_INDEX)
  shape = "Mdiamond";
 else
  shape = "record";

 printf("\tfn_%d_bb_%d [shape=%s,style=filled,label=\"",
        func->idx, bb->idx, shape);

 if (bb->idx == ENTRY_BLOCK_INDEX) {
  printf("ENTRY");
 } else if (bb->idx == EXIT_BLOCK_INDEX) {
  printf("EXIT");
 } else {
  unsigned int start_idx;
  struct dump_data dd = {};

  printf("{");
  kernel_syms_load(&dd);
  start_idx = bb->head - func->start;
  dump_xlated_for_graph(&dd, bb->head, bb->tail, start_idx);
  kernel_syms_destroy(&dd);
  printf("}");
 }

 printf("\"];\n\n");
}
