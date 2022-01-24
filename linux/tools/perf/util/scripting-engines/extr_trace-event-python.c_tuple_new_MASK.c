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
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static PyObject *FUNC2(unsigned int sz)
{
	PyObject *t;

	t = FUNC0(sz);
	if (!t)
		FUNC1("couldn't create Python tuple");
	return t;
}