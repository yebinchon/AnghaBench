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
struct tcf_proto {int deleting; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct tcf_proto*,int) ; 

__attribute__((used)) static bool FUNC3(struct tcf_proto *tp, bool rtnl_held)
{
	FUNC0(&tp->lock);
	if (FUNC2(tp, rtnl_held))
		tp->deleting = true;
	FUNC1(&tp->lock);
	return tp->deleting;
}