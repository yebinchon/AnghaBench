
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct block_range {scalar_t__ start; int coverage; scalar_t__ end; int taken; scalar_t__ pred; scalar_t__ is_branch; scalar_t__ entry; scalar_t__ is_target; } ;


 struct block_range* block_range__next (struct block_range*) ;
 int printf (char*,...) ;

__attribute__((used)) static void annotate__branch_printf(struct block_range *br, u64 addr)
{
 bool emit_comment = 1;

 if (!br)
  return;


 if (br->is_target && br->start == addr) {
  struct block_range *branch = br;
  double p;




  while (!branch->is_branch)
   branch = block_range__next(branch);

  p = 100 *(double)br->entry / branch->coverage;

  if (p > 0.1) {
   if (emit_comment) {
    emit_comment = 0;
    printf("\t#");
   }





   printf(" +%.2f%%", p);
  }
 }

 if (br->is_branch && br->end == addr) {
  double p = 100*(double)br->taken / br->coverage;

  if (p > 0.1) {
   if (emit_comment) {
    emit_comment = 0;
    printf("\t#");
   }





   printf(" -%.2f%% (p:%.2f%%)", p, 100*(double)br->pred / br->taken);
  }
 }
}
