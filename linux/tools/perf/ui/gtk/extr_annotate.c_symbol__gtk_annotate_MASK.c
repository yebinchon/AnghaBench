#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct symbol {int /*<<< orphan*/  name; } ;
struct map {TYPE_1__* dso; } ;
struct hist_browser_timer {int dummy; } ;
struct evsel {int dummy; } ;
typedef  int /*<<< orphan*/  msg ;
struct TYPE_6__ {int /*<<< orphan*/ * notebook; int /*<<< orphan*/ * main_window; } ;
struct TYPE_5__ {scalar_t__ annotate_warned; } ;
typedef  int /*<<< orphan*/  GtkWidget ;

/* Variables and functions */
 int BUFSIZ ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GTK_POLICY_AUTOMATIC ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GTK_WINDOW_TOPLEVEL ; 
 int /*<<< orphan*/  SIGFPE ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGQUIT ; 
 int /*<<< orphan*/  SIGSEGV ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  annotation__default_options ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gtk_main_quit ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 () ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*) ; 
 TYPE_2__* FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,struct symbol*,struct map*,struct evsel*,struct hist_browser_timer*) ; 
 scalar_t__ FUNC18 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC19 () ; 
 int /*<<< orphan*/ * FUNC20 () ; 
 int /*<<< orphan*/  perf_gtk__signal ; 
 TYPE_2__* pgctx ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC22 (struct symbol*,struct map*,struct evsel*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (struct symbol*,struct evsel*) ; 
 int /*<<< orphan*/  FUNC24 (struct symbol*,struct map*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC25 (char*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC26(struct symbol *sym, struct map *map,
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

	err = FUNC22(sym, map, evsel, 0, &annotation__default_options, NULL);
	if (err) {
		char msg[BUFSIZ];
		FUNC24(sym, map, err, msg, sizeof(msg));
		FUNC25("Couldn't annotate %s: %s\n", sym->name, msg);
		return -1;
	}

	FUNC23(sym, evsel);

	if (FUNC18(pgctx)) {
		window = pgctx->main_window;
		notebook = pgctx->notebook;
	} else {
		GtkWidget *vbox;
		GtkWidget *infobar;
		GtkWidget *statbar;

		FUNC21(SIGSEGV, perf_gtk__signal);
		FUNC21(SIGFPE,  perf_gtk__signal);
		FUNC21(SIGINT,  perf_gtk__signal);
		FUNC21(SIGQUIT, perf_gtk__signal);
		FUNC21(SIGTERM, perf_gtk__signal);

		window = FUNC14(GTK_WINDOW_TOPLEVEL);
		FUNC15(FUNC4(window), "perf annotate");

		FUNC5(window, "delete_event", gtk_main_quit, NULL);

		pgctx = FUNC16(window);
		if (!pgctx)
			return -1;

		vbox = FUNC13(FALSE, 0);
		notebook = FUNC10();
		pgctx->notebook = notebook;

		FUNC6(FUNC0(vbox), notebook, TRUE, TRUE, 0);

		infobar = FUNC19();
		if (infobar) {
			FUNC6(FUNC0(vbox), infobar,
					   FALSE, FALSE, 0);
		}

		statbar = FUNC20();
		FUNC6(FUNC0(vbox), statbar, FALSE, FALSE, 0);

		FUNC7(FUNC1(window), vbox);
	}

	scrolled_window = FUNC11(NULL, NULL);
	tab_label = FUNC8(sym->name);

	FUNC12(FUNC3(scrolled_window),
				       GTK_POLICY_AUTOMATIC,
				       GTK_POLICY_AUTOMATIC);

	FUNC9(FUNC2(notebook), scrolled_window,
				 tab_label);

	FUNC17(scrolled_window, sym, map, evsel, hbt);
	return 0;
}