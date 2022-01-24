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
struct timespec64 {int dummy; } ;
typedef  int /*<<< orphan*/  clockid_t ;

/* Variables and functions */
 int /*<<< orphan*/  HRTIMER_MODE_ABS ; 
 int /*<<< orphan*/  HRTIMER_MODE_REL ; 
 int TIMER_ABSTIME ; 
 int FUNC0 (struct timespec64 const*,int /*<<< orphan*/ ,int /*<<< orphan*/  const) ; 

__attribute__((used)) static int FUNC1(const clockid_t which_clock, int flags,
			 const struct timespec64 *rqtp)
{
	return FUNC0(rqtp, flags & TIMER_ABSTIME ?
				 HRTIMER_MODE_ABS : HRTIMER_MODE_REL,
				 which_clock);
}