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
struct test_parman_item {int dummy; } ;
struct test_parman {unsigned long prio_array_limit; struct test_parman_item** prio_array; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 struct test_parman_item** FUNC1 (struct test_parman_item**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct test_parman_item**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(void *priv, unsigned long new_count)
{
	struct test_parman *test_parman = priv;
	struct test_parman_item **prio_array;
	unsigned long old_count;

	prio_array = FUNC1(test_parman->prio_array,
			      FUNC0(new_count), GFP_KERNEL);
	if (new_count == 0)
		return 0;
	if (!prio_array)
		return -ENOMEM;
	old_count = test_parman->prio_array_limit;
	if (new_count > old_count)
		FUNC2(&prio_array[old_count], 0,
		       FUNC0(new_count - old_count));
	test_parman->prio_array = prio_array;
	test_parman->prio_array_limit = new_count;
	return 0;
}