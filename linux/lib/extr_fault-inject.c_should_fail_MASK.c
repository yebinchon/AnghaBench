#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct fault_attr {int probability; int interval; int count; int /*<<< orphan*/  times; int /*<<< orphan*/  space; scalar_t__ task_filter; } ;
typedef  int ssize_t ;
struct TYPE_3__ {int /*<<< orphan*/  fail_nth; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC5 (struct fault_attr*) ; 
 int /*<<< orphan*/  FUNC6 (struct fault_attr*) ; 
 int /*<<< orphan*/  FUNC7 (struct fault_attr*,TYPE_1__*) ; 
 scalar_t__ FUNC8 () ; 
 int FUNC9 () ; 

bool FUNC10(struct fault_attr *attr, ssize_t size)
{
	if (FUNC8()) {
		unsigned int fail_nth = FUNC0(current->fail_nth);

		if (fail_nth) {
			if (!FUNC1(current->fail_nth, fail_nth - 1))
				goto fail;

			return false;
		}
	}

	/* No need to check any other properties if the probability is 0 */
	if (attr->probability == 0)
		return false;

	if (attr->task_filter && !FUNC7(attr, current))
		return false;

	if (FUNC3(&attr->times) == 0)
		return false;

	if (FUNC3(&attr->space) > size) {
		FUNC4(size, &attr->space);
		return false;
	}

	if (attr->interval > 1) {
		attr->count++;
		if (attr->count % attr->interval)
			return false;
	}

	if (attr->probability <= FUNC9() % 100)
		return false;

	if (!FUNC6(attr))
		return false;

fail:
	FUNC5(attr);

	if (FUNC3(&attr->times) != -1)
		FUNC2(&attr->times);

	return true;
}