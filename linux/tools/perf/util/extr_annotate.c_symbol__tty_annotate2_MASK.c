#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct symbol {char* name; } ;
struct rb_root {int dummy; } ;
struct map {struct dso* dso; } ;
struct hists {int dummy; } ;
struct evsel {int dummy; } ;
struct dso {char* long_name; } ;
struct annotation_options {int /*<<< orphan*/  percent_type; int /*<<< orphan*/  full_path; scalar_t__ print_lines; } ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_2__ {int /*<<< orphan*/  src; } ;

/* Variables and functions */
 struct rb_root RB_ROOT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct hists* FUNC1 (struct evsel*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct hists*,char*,int) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rb_root*,char*) ; 
 int /*<<< orphan*/  srcline_full_filename ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC6 (struct symbol*,struct map*,struct evsel*,struct annotation_options*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct symbol*,int /*<<< orphan*/ ,struct annotation_options*) ; 
 TYPE_1__* FUNC8 (struct symbol*) ; 
 int /*<<< orphan*/  FUNC9 (struct symbol*,struct map*,struct rb_root*,struct annotation_options*) ; 

int FUNC10(struct symbol *sym, struct map *map,
			  struct evsel *evsel,
			  struct annotation_options *opts)
{
	struct dso *dso = map->dso;
	struct rb_root source_line = RB_ROOT;
	struct hists *hists = FUNC1(evsel);
	char buf[1024];

	if (FUNC6(sym, map, evsel, opts, NULL) < 0)
		return -1;

	if (opts->print_lines) {
		srcline_full_filename = opts->full_path;
		FUNC9(sym, map, &source_line, opts);
		FUNC5(&source_line, dso->long_name);
	}

	FUNC3(hists, buf, sizeof(buf));
	FUNC2(stdout, "%s, [percent: %s]\n%s() %s\n",
		buf, FUNC4(opts->percent_type), sym->name, dso->long_name);
	FUNC7(sym, stdout, opts);

	FUNC0(FUNC8(sym)->src);

	return 0;
}