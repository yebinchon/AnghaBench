#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct perf_sample {int dummy; } ;
struct evsel {int dummy; } ;
struct addr_location {int dummy; } ;
typedef  int /*<<< orphan*/  handler_name ;
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_FIELDS ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int /*<<< orphan*/ **,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC6 (char*) ; 
 int /*<<< orphan*/ * FUNC7 (struct perf_sample*,struct evsel*,struct addr_location*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (struct perf_sample*,struct evsel*,struct addr_location*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,char*) ; 

__attribute__((used)) static void FUNC10(struct perf_sample *sample,
					 struct evsel *evsel,
					 struct addr_location *al)
{
	PyObject *handler, *t, *dict, *callchain;
	static char handler_name[64];
	unsigned n = 0;

	FUNC9(handler_name, sizeof(handler_name), "%s", "process_event");

	handler = FUNC6(handler_name);
	if (!handler)
		return;

	/*
	 * Use the MAX_FIELDS to make the function expandable, though
	 * currently there is only one item for the tuple.
	 */
	t = FUNC0(MAX_FIELDS);
	if (!t)
		FUNC3("couldn't create Python tuple");

	/* ip unwinding */
	callchain = FUNC8(sample, evsel, al);
	dict = FUNC7(sample, evsel, al, callchain);

	FUNC1(t, n++, dict);
	if (FUNC4(&t, n) == -1)
		FUNC3("error resizing Python tuple");

	FUNC5(handler, t, handler_name);

	FUNC2(t);
}