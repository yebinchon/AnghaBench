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
struct pyrf_event {int dummy; } ;
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (struct pyrf_event*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct pyrf_event*) ; 

__attribute__((used)) static PyObject*
FUNC3(struct pyrf_event *pevent, PyObject *attr_name)
{
	PyObject *obj = NULL;

	if (FUNC2(pevent))
		obj = FUNC1(pevent, attr_name);

	return obj ?: FUNC0((PyObject *) pevent, attr_name);
}