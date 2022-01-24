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
struct srcu_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SRCU_RETRY_CHECK_DELAY ; 
 int /*<<< orphan*/  FUNC0 (struct srcu_struct*) ; 
 scalar_t__ FUNC1 (struct srcu_struct*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC3(struct srcu_struct *ssp, int idx, int trycount)
{
	for (;;) {
		if (FUNC1(ssp, idx))
			return true;
		if (--trycount + !FUNC0(ssp) <= 0)
			return false;
		FUNC2(SRCU_RETRY_CHECK_DELAY);
	}
}