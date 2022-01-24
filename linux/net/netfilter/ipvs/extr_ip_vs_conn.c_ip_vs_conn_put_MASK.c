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
struct ip_vs_conn {int flags; int /*<<< orphan*/  timer; int /*<<< orphan*/  refcnt; } ;

/* Variables and functions */
 int IP_VS_CONN_F_ONE_PACKET ; 
 int /*<<< orphan*/  FUNC0 (struct ip_vs_conn*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct ip_vs_conn *cp)
{
	if ((cp->flags & IP_VS_CONN_F_ONE_PACKET) &&
	    (FUNC2(&cp->refcnt) == 1) &&
	    !FUNC3(&cp->timer))
		/* expire connection immediately */
		FUNC1(&cp->timer);
	else
		FUNC0(cp);
}