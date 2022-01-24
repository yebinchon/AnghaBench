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
struct timer_list {int dummy; } ;
struct inet_timewait_sock {scalar_t__ tw_kill; } ;

/* Variables and functions */
 int /*<<< orphan*/  LINUX_MIB_TIMEWAITED ; 
 int /*<<< orphan*/  LINUX_MIB_TIMEWAITKILLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct inet_timewait_sock* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inet_timewait_sock*) ; 
 struct inet_timewait_sock* tw ; 
 int /*<<< orphan*/  tw_timer ; 
 int /*<<< orphan*/  FUNC3 (struct inet_timewait_sock*) ; 

__attribute__((used)) static void FUNC4(struct timer_list *t)
{
	struct inet_timewait_sock *tw = FUNC1(tw, t, tw_timer);

	if (tw->tw_kill)
		FUNC0(FUNC3(tw), LINUX_MIB_TIMEWAITKILLED);
	else
		FUNC0(FUNC3(tw), LINUX_MIB_TIMEWAITED);
	FUNC2(tw);
}