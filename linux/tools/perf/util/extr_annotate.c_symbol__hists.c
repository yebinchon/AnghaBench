
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {int dummy; } ;
struct annotation {struct annotated_source* src; } ;
struct annotated_source {int * histograms; } ;


 int annotated_source__alloc_histograms (struct annotated_source*,int ,int) ;
 struct annotated_source* annotated_source__new () ;
 struct annotation* symbol__annotation (struct symbol*) ;
 int symbol__size (struct symbol*) ;

struct annotated_source *symbol__hists(struct symbol *sym, int nr_hists)
{
 struct annotation *notes = symbol__annotation(sym);

 if (notes->src == ((void*)0)) {
  notes->src = annotated_source__new();
  if (notes->src == ((void*)0))
   return ((void*)0);
  goto alloc_histograms;
 }

 if (notes->src->histograms == ((void*)0)) {
alloc_histograms:
  annotated_source__alloc_histograms(notes->src, symbol__size(sym),
         nr_hists);
 }

 return notes->src;
}
