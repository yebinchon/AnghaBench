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
struct symbol {int dummy; } ;
struct rb_root {int dummy; } ;
struct map {struct dso* dso; } ;
struct evsel {int dummy; } ;
struct dso {int /*<<< orphan*/  long_name; } ;
struct annotation_options {int /*<<< orphan*/  full_path; scalar_t__ print_lines; } ;
struct TYPE_2__ {int /*<<< orphan*/  src; } ;

/* Variables and functions */
 struct rb_root RB_ROOT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rb_root*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  srcline_full_filename ; 
 scalar_t__ FUNC2 (struct symbol*,struct map*,struct evsel*,int /*<<< orphan*/ ,struct annotation_options*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct symbol*,struct map*,struct evsel*,struct annotation_options*) ; 
 TYPE_1__* FUNC4 (struct symbol*) ; 
 int /*<<< orphan*/  FUNC5 (struct symbol*,struct map*,struct rb_root*,struct annotation_options*) ; 
 int /*<<< orphan*/  FUNC6 (struct symbol*,struct evsel*) ; 

int FUNC7(struct symbol *sym, struct map *map,
			 struct evsel *evsel,
			 struct annotation_options *opts)
{
	struct dso *dso = map->dso;
	struct rb_root source_line = RB_ROOT;

	if (FUNC2(sym, map, evsel, 0, opts, NULL) < 0)
		return -1;

	FUNC6(sym, evsel);

	if (opts->print_lines) {
		srcline_full_filename = opts->full_path;
		FUNC5(sym, map, &source_line, opts);
		FUNC1(&source_line, dso->long_name);
	}

	FUNC3(sym, map, evsel, opts);

	FUNC0(FUNC4(sym)->src);

	return 0;
}