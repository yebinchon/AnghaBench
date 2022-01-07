
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct symbol {char* name; } ;
struct rb_root {int dummy; } ;
struct map {struct dso* dso; } ;
struct hists {int dummy; } ;
struct evsel {int dummy; } ;
struct dso {char* long_name; } ;
struct annotation_options {int percent_type; int full_path; scalar_t__ print_lines; } ;
typedef int buf ;
struct TYPE_2__ {int src; } ;


 struct rb_root RB_ROOT ;
 int annotated_source__purge (int ) ;
 struct hists* evsel__hists (struct evsel*) ;
 int fprintf (int ,char*,char*,char*,char*,char*) ;
 int hists__scnprintf_title (struct hists*,char*,int) ;
 char* percent_type_str (int ) ;
 int print_summary (struct rb_root*,char*) ;
 int srcline_full_filename ;
 int stdout ;
 scalar_t__ symbol__annotate2 (struct symbol*,struct map*,struct evsel*,struct annotation_options*,int *) ;
 int symbol__annotate_fprintf2 (struct symbol*,int ,struct annotation_options*) ;
 TYPE_1__* symbol__annotation (struct symbol*) ;
 int symbol__calc_lines (struct symbol*,struct map*,struct rb_root*,struct annotation_options*) ;

int symbol__tty_annotate2(struct symbol *sym, struct map *map,
     struct evsel *evsel,
     struct annotation_options *opts)
{
 struct dso *dso = map->dso;
 struct rb_root source_line = RB_ROOT;
 struct hists *hists = evsel__hists(evsel);
 char buf[1024];

 if (symbol__annotate2(sym, map, evsel, opts, ((void*)0)) < 0)
  return -1;

 if (opts->print_lines) {
  srcline_full_filename = opts->full_path;
  symbol__calc_lines(sym, map, &source_line, opts);
  print_summary(&source_line, dso->long_name);
 }

 hists__scnprintf_title(hists, buf, sizeof(buf));
 fprintf(stdout, "%s, [percent: %s]\n%s() %s\n",
  buf, percent_type_str(opts->percent_type), sym->name, dso->long_name);
 symbol__annotate_fprintf2(sym, stdout, opts);

 annotated_source__purge(symbol__annotation(sym)->src);

 return 0;
}
