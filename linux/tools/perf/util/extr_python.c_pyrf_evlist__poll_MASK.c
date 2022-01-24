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
 int /*<<< orphan*/ * FUNC2 (char*,int) ; 
 int FUNC3 (struct evlist*,int) ; 

__attribute__((used)) static PyObject *FUNC4(struct pyrf_evlist *pevlist,
				   PyObject *args, PyObject *kwargs)
{
	struct evlist *evlist = &pevlist->evlist;
	static char *kwlist[] = { "timeout", NULL };
	int timeout = -1, n;

	if (!FUNC0(args, kwargs, "|i", kwlist, &timeout))
		return NULL;

	n = FUNC3(evlist, timeout);
	if (n < 0) {
		FUNC1(PyExc_OSError);
		return NULL;
	}

	return FUNC2("i", n);
}