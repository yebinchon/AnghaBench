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
struct TYPE_3__ {int /*<<< orphan*/  expires; } ;
struct ip_vs_conn {TYPE_1__ timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 

void FUNC3(struct ip_vs_conn *cp)
{
	/* Using mod_timer_pending will ensure the timer is not
	 * modified after the final del_timer in ip_vs_conn_expire.
	 */
	if (FUNC2(&cp->timer) &&
	    FUNC1(cp->timer.expires, jiffies))
		FUNC0(&cp->timer, jiffies);
}