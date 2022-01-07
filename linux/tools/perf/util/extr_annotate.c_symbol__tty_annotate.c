
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct symbol {int dummy; } ;
struct rb_root {int dummy; } ;
struct map {struct dso* dso; } ;
struct evsel {int dummy; } ;
struct dso {int long_name; } ;
struct annotation_options {int full_path; scalar_t__ print_lines; } ;
struct TYPE_2__ {int src; } ;


 struct rb_root RB_ROOT ;
 int annotated_source__purge (int ) ;
 int print_summary (struct rb_root*,int ) ;
 int srcline_full_filename ;
 scalar_t__ symbol__annotate (struct symbol*,struct map*,struct evsel*,int ,struct annotation_options*,int *) ;
 int symbol__annotate_printf (struct symbol*,struct map*,struct evsel*,struct annotation_options*) ;
 TYPE_1__* symbol__annotation (struct symbol*) ;
 int symbol__calc_lines (struct symbol*,struct map*,struct rb_root*,struct annotation_options*) ;
 int symbol__calc_percent (struct symbol*,struct evsel*) ;

int symbol__tty_annotate(struct symbol *sym, struct map *map,
    struct evsel *evsel,
    struct annotation_options *opts)
{
 struct dso *dso = map->dso;
 struct rb_root source_line = RB_ROOT;

 if (symbol__annotate(sym, map, evsel, 0, opts, ((void*)0)) < 0)
  return -1;

 symbol__calc_percent(sym, evsel);

 if (opts->print_lines) {
  srcline_full_filename = opts->full_path;
  symbol__calc_lines(sym, map, &source_line, opts);
  print_summary(&source_line, dso->long_name);
 }

 symbol__annotate_printf(sym, map, evsel, opts);

 annotated_source__purge(symbol__annotation(sym)->src);

 return 0;
}
