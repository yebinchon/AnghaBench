
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u64 ;
struct annotation {scalar_t__* offsets; } ;



__attribute__((used)) static unsigned annotation__count_insn(struct annotation *notes, u64 start, u64 end)
{
 unsigned n_insn = 0;
 u64 offset;

 for (offset = start; offset <= end; offset++) {
  if (notes->offsets[offset])
   n_insn++;
 }
 return n_insn;
}
