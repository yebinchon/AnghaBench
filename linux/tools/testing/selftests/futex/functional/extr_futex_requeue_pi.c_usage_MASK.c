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

/* Variables and functions */
 int VCRITICAL ; 
 int VINFO ; 
 int VQUIET ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

void FUNC1(char *prog)
{
	FUNC0("Usage: %s\n", prog);
	FUNC0("  -b	Broadcast wakeup (all waiters)\n");
	FUNC0("  -c	Use color\n");
	FUNC0("  -h	Display this help message\n");
	FUNC0("  -l	Lock the pi futex across requeue\n");
	FUNC0("  -o	Use a third party pi futex owner during requeue (cancels -l)\n");
	FUNC0("  -t N	Timeout in nanoseconds (default: 0)\n");
	FUNC0("  -v L	Verbosity level: %d=QUIET %d=CRITICAL %d=INFO\n",
	       VQUIET, VCRITICAL, VINFO);
}