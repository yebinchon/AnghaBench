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
struct ce_unbind {int res; int /*<<< orphan*/  ce; } ;

/* Variables and functions */
 int EAGAIN ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  clockevents_lock ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void FUNC5(void *arg)
{
	struct ce_unbind *cu = arg;
	int res;

	FUNC2(&clockevents_lock);
	res = FUNC0(cu->ce, FUNC4());
	if (res == -EAGAIN)
		res = FUNC1(cu->ce);
	cu->res = res;
	FUNC3(&clockevents_lock);
}