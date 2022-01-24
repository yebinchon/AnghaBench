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
typedef  int clockid_t ;

/* Variables and functions */
#define  CLOCK_BOOTTIME 130 
#define  CLOCK_MONOTONIC 129 
#define  CLOCK_REALTIME 128 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct timespec64*) ; 
 int /*<<< orphan*/  FUNC1 (struct timespec64*) ; 
 int /*<<< orphan*/  FUNC2 (struct timespec64*) ; 

int FUNC3(clockid_t which_clock, struct timespec64 *tp)
{
	switch (which_clock) {
	case CLOCK_REALTIME:
		FUNC1(tp);
		break;
	case CLOCK_MONOTONIC:
		FUNC2(tp);
		break;
	case CLOCK_BOOTTIME:
		FUNC0(tp);
		break;
	default:
		return -EINVAL;
	}

	return 0;
}