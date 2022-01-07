
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct symbol {int dummy; } ;
struct cyc_hist {int dummy; } ;
struct annotation {TYPE_1__* src; } ;
struct TYPE_2__ {int * cycles_hist; } ;


 int * calloc (size_t const,int) ;
 struct annotation* symbol__annotation (struct symbol*) ;
 size_t symbol__size (struct symbol*) ;

__attribute__((used)) static int symbol__alloc_hist_cycles(struct symbol *sym)
{
 struct annotation *notes = symbol__annotation(sym);
 const size_t size = symbol__size(sym);

 notes->src->cycles_hist = calloc(size, sizeof(struct cyc_hist));
 if (notes->src->cycles_hist == ((void*)0))
  return -1;
 return 0;
}
