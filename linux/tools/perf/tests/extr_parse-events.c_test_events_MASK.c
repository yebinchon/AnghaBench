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
struct evlist_test {int /*<<< orphan*/  name; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (struct evlist_test*) ; 

__attribute__((used)) static int FUNC2(struct evlist_test *events, unsigned cnt)
{
	int ret1, ret2 = 0;
	unsigned i;

	for (i = 0; i < cnt; i++) {
		struct evlist_test *e = &events[i];

		FUNC0("running test %d '%s'", e->id, e->name);
		ret1 = FUNC1(e);
		if (ret1)
			ret2 = ret1;
		FUNC0("\n");
	}

	return ret2;
}