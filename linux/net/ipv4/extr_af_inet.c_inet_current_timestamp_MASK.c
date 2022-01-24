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
typedef  int u32 ;
struct timespec64 {scalar_t__ tv_nsec; int /*<<< orphan*/  tv_sec; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int MSEC_PER_SEC ; 
 int NSEC_PER_MSEC ; 
 int /*<<< orphan*/  SECONDS_PER_DAY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct timespec64*) ; 

__be32 FUNC3(void)
{
	u32 secs;
	u32 msecs;
	struct timespec64 ts;

	FUNC2(&ts);

	/* Get secs since midnight. */
	(void)FUNC0(ts.tv_sec, SECONDS_PER_DAY, &secs);
	/* Convert to msecs. */
	msecs = secs * MSEC_PER_SEC;
	/* Convert nsec to msec. */
	msecs += (u32)ts.tv_nsec / NSEC_PER_MSEC;

	/* Convert to network byte order. */
	return FUNC1(msecs);
}