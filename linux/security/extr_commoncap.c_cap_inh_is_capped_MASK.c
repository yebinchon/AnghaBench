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
struct TYPE_3__ {int /*<<< orphan*/  user_ns; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_OPT_NONE ; 
 int /*<<< orphan*/  CAP_SETPCAP ; 
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 () ; 

__attribute__((used)) static inline int FUNC2(void)
{
	/* they are so limited unless the current task has the CAP_SETPCAP
	 * capability
	 */
	if (FUNC0(FUNC1(), FUNC1()->user_ns,
			CAP_SETPCAP, CAP_OPT_NONE) == 0)
		return 0;
	return 1;
}