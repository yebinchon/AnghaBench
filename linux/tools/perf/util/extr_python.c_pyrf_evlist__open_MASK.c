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
struct evlist {int dummy; } ;
struct pyrf_evlist {struct evlist evlist; } ;
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char**,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PyExc_OSError ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * Py_None ; 
 scalar_t__ FUNC3 (struct evlist*) ; 
 int /*<<< orphan*/  FUNC4 (struct evlist*) ; 

__attribute__((used)) static PyObject *FUNC5(struct pyrf_evlist *pevlist,
				   PyObject *args, PyObject *kwargs)
{
	struct evlist *evlist = &pevlist->evlist;
	int group = 0;
	static char *kwlist[] = { "group", NULL };

	if (!FUNC0(args, kwargs, "|OOii", kwlist, &group))
		return NULL;

	if (group)
		FUNC4(evlist);

	if (FUNC3(evlist) < 0) {
		FUNC1(PyExc_OSError);
		return NULL;
	}

	FUNC2(Py_None);
	return Py_None;
}