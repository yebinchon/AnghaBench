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
struct test_parman_prio {int /*<<< orphan*/  priority; int /*<<< orphan*/  parman_prio; } ;
struct test_parman {int /*<<< orphan*/  parman; struct test_parman_prio* prios; } ;

/* Variables and functions */
 int TEST_PARMAN_PRIO_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct test_parman*) ; 

__attribute__((used)) static void FUNC2(struct test_parman *test_parman)
{
	int i;

	for (i = 0; i < TEST_PARMAN_PRIO_COUNT; i++) {
		struct test_parman_prio *prio = &test_parman->prios[i];

		/* Assign random uniqueue priority to each prio structure */
		prio->priority = FUNC1(test_parman);
		FUNC0(test_parman->parman, &prio->parman_prio,
				 prio->priority);
	}
}