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
struct timeval {int tv_usec; int /*<<< orphan*/  tv_sec; } ;

/* Variables and functions */
 int NSEC_PER_USEC ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ,int) ; 

unsigned long
FUNC1(const struct timeval *value)
{
	return FUNC0(value->tv_sec,
				     value->tv_usec * NSEC_PER_USEC);
}