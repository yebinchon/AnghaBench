#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct perf_sample {int /*<<< orphan*/  callchain; } ;
struct map {TYPE_2__* dso; } ;
struct evsel {int dummy; } ;
struct callchain_cursor_node {struct map* map; TYPE_1__* sym; int /*<<< orphan*/  ip; } ;
struct addr_location {int /*<<< orphan*/  thread; } ;
struct TYPE_6__ {scalar_t__ show_kernel_path; int /*<<< orphan*/  use_callchain; } ;
struct TYPE_5__ {char* long_name; char* name; } ;
struct TYPE_4__ {int /*<<< orphan*/  namelen; int /*<<< orphan*/  name; int /*<<< orphan*/  binding; int /*<<< orphan*/  end; int /*<<< orphan*/  start; } ;
typedef  int /*<<< orphan*/  SV ;
typedef  int /*<<< orphan*/  HV ;
typedef  int /*<<< orphan*/  AV ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  callchain_cursor ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct callchain_cursor_node* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  scripting_max_stack ; 
 TYPE_3__ symbol_conf ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct evsel*,struct perf_sample*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static SV *FUNC14(struct perf_sample *sample,
				  struct evsel *evsel,
				  struct addr_location *al)
{
	AV *list;

	list = FUNC6();
	if (!list)
		goto exit;

	if (!symbol_conf.use_callchain || !sample->callchain)
		goto exit;

	if (FUNC13(al->thread, &callchain_cursor, evsel,
				      sample, NULL, NULL, scripting_max_stack) != 0) {
		FUNC12("Failed to resolve callchain. Skipping\n");
		goto exit;
	}
	FUNC2(&callchain_cursor);


	while (1) {
		HV *elem;
		struct callchain_cursor_node *node;
		node = FUNC3(&callchain_cursor);
		if (!node)
			break;

		elem = FUNC7();
		if (!elem)
			goto exit;

		if (!FUNC4(elem, "ip", FUNC11(node->ip))) {
			FUNC5(elem);
			goto exit;
		}

		if (node->sym) {
			HV *sym = FUNC7();
			if (!sym) {
				FUNC5(elem);
				goto exit;
			}
			if (!FUNC4(sym, "start",   FUNC11(node->sym->start)) ||
			    !FUNC4(sym, "end",     FUNC11(node->sym->end)) ||
			    !FUNC4(sym, "binding", FUNC11(node->sym->binding)) ||
			    !FUNC4(sym, "name",    FUNC10(node->sym->name,
								node->sym->namelen)) ||
			    !FUNC4(elem, "sym",    FUNC8((SV*)sym))) {
				FUNC5(sym);
				FUNC5(elem);
				goto exit;
			}
		}

		if (node->map) {
			struct map *map = node->map;
			const char *dsoname = "[unknown]";
			if (map && map->dso) {
				if (symbol_conf.show_kernel_path && map->dso->long_name)
					dsoname = map->dso->long_name;
				else
					dsoname = map->dso->name;
			}
			if (!FUNC4(elem, "dso", FUNC9(dsoname,0))) {
				FUNC5(elem);
				goto exit;
			}
		}

		FUNC1(&callchain_cursor);
		FUNC0(list, FUNC8((SV*)elem));
	}

exit:
	return FUNC8((SV*)list);
}