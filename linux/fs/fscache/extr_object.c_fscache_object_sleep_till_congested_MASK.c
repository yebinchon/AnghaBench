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
typedef  int /*<<< orphan*/  wait_queue_head_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fscache_object_cong_wait ; 
 int FUNC3 () ; 
 long FUNC4 (long) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wait ; 

bool FUNC6(signed long *timeoutp)
{
	wait_queue_head_t *cong_wq = FUNC5(&fscache_object_cong_wait);
	FUNC0(wait);

	if (FUNC3())
		return true;

	FUNC1(cong_wq, &wait);
	if (!FUNC3())
		*timeoutp = FUNC4(*timeoutp);
	FUNC2(cong_wq, &wait);

	return FUNC3();
}