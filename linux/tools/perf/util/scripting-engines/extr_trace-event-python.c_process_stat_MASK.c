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
typedef  int /*<<< orphan*/  u64 ;
struct perf_counts_values {int /*<<< orphan*/  run; int /*<<< orphan*/  ena; int /*<<< orphan*/  val; } ;
struct evsel {int dummy; } ;
typedef  int /*<<< orphan*/  handler_name ;
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_FIELDS ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,struct evsel*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11(struct evsel *counter, int cpu, int thread, u64 tstamp,
	     struct perf_counts_values *count)
{
	PyObject *handler, *t;
	static char handler_name[256];
	int n = 0;

	t = FUNC0(MAX_FIELDS);
	if (!t)
		FUNC3("couldn't create Python tuple");

	FUNC8(handler_name, sizeof(handler_name),
			 counter);

	handler = FUNC7(handler_name);
	if (!handler) {
		FUNC9("can't find python handler %s\n", handler_name);
		return;
	}

	FUNC1(t, n++, FUNC4(cpu));
	FUNC1(t, n++, FUNC4(thread));

	FUNC10(t, n++, tstamp);
	FUNC10(t, n++, count->val);
	FUNC10(t, n++, count->ena);
	FUNC10(t, n++, count->run);

	if (FUNC5(&t, n) == -1)
		FUNC3("error resizing Python tuple");

	FUNC6(handler, t, handler_name);

	FUNC2(t);
}