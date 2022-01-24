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
typedef  union perf_event {int dummy; } perf_event ;
struct evlist {int dummy; } ;
struct pyrf_evlist {struct evlist evlist; } ;
struct pyrf_event {int /*<<< orphan*/  sample; struct evsel* evsel; } ;
struct mmap {int dummy; } ;
struct evsel {int dummy; } ;
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char**,int*,int*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  PyExc_OSError ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * Py_None ; 
 struct mmap* FUNC4 (struct evlist*,int) ; 
 struct evsel* FUNC5 (struct evlist*,union perf_event*) ; 
 int FUNC6 (struct evsel*,union perf_event*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct mmap*) ; 
 union perf_event* FUNC8 (struct mmap*) ; 
 scalar_t__ FUNC9 (struct mmap*) ; 
 int /*<<< orphan*/ * FUNC10 (union perf_event*) ; 

__attribute__((used)) static PyObject *FUNC11(struct pyrf_evlist *pevlist,
					  PyObject *args, PyObject *kwargs)
{
	struct evlist *evlist = &pevlist->evlist;
	union perf_event *event;
	int sample_id_all = 1, cpu;
	static char *kwlist[] = { "cpu", "sample_id_all", NULL };
	struct mmap *md;
	int err;

	if (!FUNC0(args, kwargs, "i|i", kwlist,
					 &cpu, &sample_id_all))
		return NULL;

	md = FUNC4(evlist, cpu);
	if (!md)
		return NULL;

	if (FUNC9(md) < 0)
		goto end;

	event = FUNC8(md);
	if (event != NULL) {
		PyObject *pyevent = FUNC10(event);
		struct pyrf_event *pevent = (struct pyrf_event *)pyevent;
		struct evsel *evsel;

		if (pyevent == NULL)
			return FUNC2();

		evsel = FUNC5(evlist, event);
		if (!evsel) {
			FUNC3(Py_None);
			return Py_None;
		}

		pevent->evsel = evsel;

		err = FUNC6(evsel, event, &pevent->sample);

		/* Consume the even only after we parsed it out. */
		FUNC7(md);

		if (err)
			return FUNC1(PyExc_OSError,
					    "perf: can't parse sample, err=%d", err);
		return pyevent;
	}
end:
	FUNC3(Py_None);
	return Py_None;
}