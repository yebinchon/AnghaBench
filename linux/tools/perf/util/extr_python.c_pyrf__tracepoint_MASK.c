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
struct tep_event {int id; } ;
struct pyrf_evsel {int dummy; } ;
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct tep_event*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char**,char**,char**) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 struct tep_event* FUNC3 (char*,char*) ; 

__attribute__((used)) static PyObject *FUNC4(struct pyrf_evsel *pevsel,
				  PyObject *args, PyObject *kwargs)
{
	struct tep_event *tp_format;
	static char *kwlist[] = { "sys", "name", NULL };
	char *sys  = NULL;
	char *name = NULL;

	if (!FUNC1(args, kwargs, "|ss", kwlist,
					 &sys, &name))
		return NULL;

	tp_format = FUNC3(sys, name);
	if (FUNC0(tp_format))
		return FUNC2(-1);

	return FUNC2(tp_format->id);
}