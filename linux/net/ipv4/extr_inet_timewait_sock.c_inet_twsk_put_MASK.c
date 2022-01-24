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
struct inet_timewait_sock {int /*<<< orphan*/  tw_refcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inet_timewait_sock*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct inet_timewait_sock *tw)
{
	if (FUNC1(&tw->tw_refcnt))
		FUNC0(tw);
}