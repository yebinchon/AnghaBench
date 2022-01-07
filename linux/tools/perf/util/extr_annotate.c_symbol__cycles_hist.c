
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct symbol {int dummy; } ;
struct cyc_hist {int dummy; } ;
struct annotation {TYPE_1__* src; } ;
struct TYPE_2__ {struct cyc_hist* cycles_hist; } ;


 TYPE_1__* annotated_source__new () ;
 int symbol__alloc_hist_cycles (struct symbol*) ;
 struct annotation* symbol__annotation (struct symbol*) ;

__attribute__((used)) static struct cyc_hist *symbol__cycles_hist(struct symbol *sym)
{
 struct annotation *notes = symbol__annotation(sym);

 if (notes->src == ((void*)0)) {
  notes->src = annotated_source__new();
  if (notes->src == ((void*)0))
   return ((void*)0);
  goto alloc_cycles_hist;
 }

 if (!notes->src->cycles_hist) {
alloc_cycles_hist:
  symbol__alloc_hist_cycles(sym);
 }

 return notes->src->cycles_hist;
}
