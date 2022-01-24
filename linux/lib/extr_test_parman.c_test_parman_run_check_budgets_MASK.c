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
struct test_parman {int bulk_budget; int bulk_noop; int /*<<< orphan*/  run_budget; } ;

/* Variables and functions */
 int TEST_PARMAN_BULK_MAX_MASK ; 
 int FUNC0 (struct test_parman*) ; 

__attribute__((used)) static bool FUNC1(struct test_parman *test_parman)
{
	if (test_parman->run_budget-- == 0)
		return false;
	if (test_parman->bulk_budget-- != 0)
		return true;

	test_parman->bulk_budget = FUNC0(test_parman) &
				   TEST_PARMAN_BULK_MAX_MASK;
	test_parman->bulk_noop = FUNC0(test_parman) & 1;
	return true;
}