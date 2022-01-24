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
struct dso {int /*<<< orphan*/  long_name; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char**,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct dso*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,char*,int*) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct dso *dso)
{
	char *base, *lname;
	int tid;

	if (FUNC4(dso->long_name, "/tmp/perf-%d.map", &tid) == 1) {
		if (FUNC0(&base, "[JIT] tid %d", tid) < 0)
			return;
	} else {
	      /*
	       * basename() may modify path buffer, so we must pass
               * a copy.
               */
		lname = FUNC5(dso->long_name);
		if (!lname)
			return;

		/*
		 * basename() may return a pointer to internal
		 * storage which is reused in subsequent calls
		 * so copy the result.
		 */
		base = FUNC5(FUNC1(lname));

		FUNC3(lname);

		if (!base)
			return;
	}
	FUNC2(dso, base, true);
}