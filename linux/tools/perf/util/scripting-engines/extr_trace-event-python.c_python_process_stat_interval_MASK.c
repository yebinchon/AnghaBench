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
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_FIELDS ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/ * FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(u64 tstamp)
{
	PyObject *handler, *t;
	static const char handler_name[] = "stat__interval";
	int n = 0;

	t = FUNC0(MAX_FIELDS);
	if (!t)
		FUNC2("couldn't create Python tuple");

	handler = FUNC5(handler_name);
	if (!handler) {
		FUNC6("can't find python handler %s\n", handler_name);
		return;
	}

	FUNC7(t, n++, tstamp);

	if (FUNC3(&t, n) == -1)
		FUNC2("error resizing Python tuple");

	FUNC4(handler, t, handler_name);

	FUNC1(t);
}