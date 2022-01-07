
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct symbol {int name; } ;
struct map {TYPE_1__* dso; } ;
struct hist_browser_timer {int dummy; } ;
struct evsel {int dummy; } ;
typedef int msg ;
struct TYPE_6__ {int * notebook; int * main_window; } ;
struct TYPE_5__ {scalar_t__ annotate_warned; } ;
typedef int GtkWidget ;


 int BUFSIZ ;
 int FALSE ;
 int GTK_BOX (int *) ;
 int GTK_CONTAINER (int *) ;
 int GTK_NOTEBOOK (int *) ;
 int GTK_POLICY_AUTOMATIC ;
 int GTK_SCROLLED_WINDOW (int *) ;
 int GTK_WINDOW (int *) ;
 int GTK_WINDOW_TOPLEVEL ;
 int SIGFPE ;
 int SIGINT ;
 int SIGQUIT ;
 int SIGSEGV ;
 int SIGTERM ;
 int TRUE ;
 int annotation__default_options ;
 int g_signal_connect (int *,char*,int ,int *) ;
 int gtk_box_pack_start (int ,int *,int ,int ,int ) ;
 int gtk_container_add (int ,int *) ;
 int * gtk_label_new (int ) ;
 int gtk_main_quit ;
 int gtk_notebook_append_page (int ,int *,int *) ;
 int * gtk_notebook_new () ;
 int * gtk_scrolled_window_new (int *,int *) ;
 int gtk_scrolled_window_set_policy (int ,int ,int ) ;
 int * gtk_vbox_new (int ,int ) ;
 int * gtk_window_new (int ) ;
 int gtk_window_set_title (int ,char*) ;
 TYPE_2__* perf_gtk__activate_context (int *) ;
 int perf_gtk__annotate_symbol (int *,struct symbol*,struct map*,struct evsel*,struct hist_browser_timer*) ;
 scalar_t__ perf_gtk__is_active_context (TYPE_2__*) ;
 int * perf_gtk__setup_info_bar () ;
 int * perf_gtk__setup_statusbar () ;
 int perf_gtk__signal ;
 TYPE_2__* pgctx ;
 int signal (int ,int ) ;
 int symbol__annotate (struct symbol*,struct map*,struct evsel*,int ,int *,int *) ;
 int symbol__calc_percent (struct symbol*,struct evsel*) ;
 int symbol__strerror_disassemble (struct symbol*,struct map*,int,char*,int) ;
 int ui__error (char*,int ,char*) ;

__attribute__((used)) static int symbol__gtk_annotate(struct symbol *sym, struct map *map,
    struct evsel *evsel,
    struct hist_browser_timer *hbt)
{
 GtkWidget *window;
 GtkWidget *notebook;
 GtkWidget *scrolled_window;
 GtkWidget *tab_label;
 int err;

 if (map->dso->annotate_warned)
  return -1;

 err = symbol__annotate(sym, map, evsel, 0, &annotation__default_options, ((void*)0));
 if (err) {
  char msg[BUFSIZ];
  symbol__strerror_disassemble(sym, map, err, msg, sizeof(msg));
  ui__error("Couldn't annotate %s: %s\n", sym->name, msg);
  return -1;
 }

 symbol__calc_percent(sym, evsel);

 if (perf_gtk__is_active_context(pgctx)) {
  window = pgctx->main_window;
  notebook = pgctx->notebook;
 } else {
  GtkWidget *vbox;
  GtkWidget *infobar;
  GtkWidget *statbar;

  signal(SIGSEGV, perf_gtk__signal);
  signal(SIGFPE, perf_gtk__signal);
  signal(SIGINT, perf_gtk__signal);
  signal(SIGQUIT, perf_gtk__signal);
  signal(SIGTERM, perf_gtk__signal);

  window = gtk_window_new(GTK_WINDOW_TOPLEVEL);
  gtk_window_set_title(GTK_WINDOW(window), "perf annotate");

  g_signal_connect(window, "delete_event", gtk_main_quit, ((void*)0));

  pgctx = perf_gtk__activate_context(window);
  if (!pgctx)
   return -1;

  vbox = gtk_vbox_new(FALSE, 0);
  notebook = gtk_notebook_new();
  pgctx->notebook = notebook;

  gtk_box_pack_start(GTK_BOX(vbox), notebook, TRUE, TRUE, 0);

  infobar = perf_gtk__setup_info_bar();
  if (infobar) {
   gtk_box_pack_start(GTK_BOX(vbox), infobar,
        FALSE, FALSE, 0);
  }

  statbar = perf_gtk__setup_statusbar();
  gtk_box_pack_start(GTK_BOX(vbox), statbar, FALSE, FALSE, 0);

  gtk_container_add(GTK_CONTAINER(window), vbox);
 }

 scrolled_window = gtk_scrolled_window_new(((void*)0), ((void*)0));
 tab_label = gtk_label_new(sym->name);

 gtk_scrolled_window_set_policy(GTK_SCROLLED_WINDOW(scrolled_window),
           GTK_POLICY_AUTOMATIC,
           GTK_POLICY_AUTOMATIC);

 gtk_notebook_append_page(GTK_NOTEBOOK(notebook), scrolled_window,
     tab_label);

 perf_gtk__annotate_symbol(scrolled_window, sym, map, evsel, hbt);
 return 0;
}
