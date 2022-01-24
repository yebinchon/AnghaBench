#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct perf_sample {int /*<<< orphan*/  callchain; } ;
struct evsel {int dummy; } ;
struct callchain_cursor_node {scalar_t__ map; TYPE_1__* sym; int /*<<< orphan*/  ip; } ;
struct addr_location {int /*<<< orphan*/  thread; } ;
struct TYPE_4__ {int /*<<< orphan*/  use_callchain; } ;
struct TYPE_3__ {int /*<<< orphan*/  namelen; int /*<<< orphan*/  name; int /*<<< orphan*/  binding; int /*<<< orphan*/  end; int /*<<< orphan*/  start; } ;
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (char const*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  callchain_cursor ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 struct callchain_cursor_node* FUNC11 (int /*<<< orphan*/ *) ; 
 char* FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  scripting_max_stack ; 
 TYPE_2__ symbol_conf ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct evsel*,struct perf_sample*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static PyObject *FUNC16(struct perf_sample *sample,
					 struct evsel *evsel,
					 struct addr_location *al)
{
	PyObject *pylist;

	pylist = FUNC2(0);
	if (!pylist)
		FUNC5("couldn't create Python list");

	if (!symbol_conf.use_callchain || !sample->callchain)
		goto exit;

	if (FUNC15(al->thread, &callchain_cursor, evsel,
				      sample, NULL, NULL,
				      scripting_max_stack) != 0) {
		FUNC13("Failed to resolve callchain. Skipping\n");
		goto exit;
	}
	FUNC10(&callchain_cursor);


	while (1) {
		PyObject *pyelem;
		struct callchain_cursor_node *node;
		node = FUNC11(&callchain_cursor);
		if (!node)
			break;

		pyelem = FUNC0();
		if (!pyelem)
			FUNC5("couldn't create Python dictionary");


		FUNC14(pyelem, "ip",
				FUNC3(node->ip));

		if (node->sym) {
			PyObject *pysym  = FUNC0();
			if (!pysym)
				FUNC5("couldn't create Python dictionary");
			FUNC14(pysym, "start",
					FUNC3(node->sym->start));
			FUNC14(pysym, "end",
					FUNC3(node->sym->end));
			FUNC14(pysym, "binding",
					FUNC6(node->sym->binding));
			FUNC14(pysym, "name",
					FUNC8(node->sym->name,
							node->sym->namelen));
			FUNC14(pyelem, "sym", pysym);
		}

		if (node->map) {
			const char *dsoname = FUNC12(node->map);

			FUNC14(pyelem, "dso",
					FUNC7(dsoname));
		}

		FUNC9(&callchain_cursor);
		FUNC1(pylist, pyelem);
		FUNC4(pyelem);
	}

exit:
	return pylist;
}