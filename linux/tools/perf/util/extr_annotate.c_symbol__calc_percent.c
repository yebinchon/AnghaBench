
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {int dummy; } ;
struct evsel {int dummy; } ;
struct annotation {int dummy; } ;


 int annotation__calc_percent (struct annotation*,struct evsel*,int ) ;
 struct annotation* symbol__annotation (struct symbol*) ;
 int symbol__size (struct symbol*) ;

void symbol__calc_percent(struct symbol *sym, struct evsel *evsel)
{
 struct annotation *notes = symbol__annotation(sym);

 annotation__calc_percent(notes, evsel, symbol__size(sym));
}
