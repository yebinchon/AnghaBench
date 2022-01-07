
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct symbol {int dummy; } ;
struct block_range {scalar_t__ coverage; struct symbol* sym; } ;
struct TYPE_4__ {scalar_t__ blocks; } ;
struct TYPE_3__ {double max_coverage; } ;


 TYPE_2__ block_ranges ;
 TYPE_1__* symbol__annotation (struct symbol*) ;

double block_range__coverage(struct block_range *br)
{
 struct symbol *sym;

 if (!br) {
  if (block_ranges.blocks)
   return 0;

  return -1;
 }

 sym = br->sym;
 if (!sym)
  return -1;

 return (double)br->coverage / symbol__annotation(sym)->max_coverage;
}
