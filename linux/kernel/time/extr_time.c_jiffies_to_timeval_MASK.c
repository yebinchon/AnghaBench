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
typedef  int u64 ;
typedef  int u32 ;
struct timeval {int tv_usec; int /*<<< orphan*/  tv_sec; } ;

/* Variables and functions */
 int /*<<< orphan*/  NSEC_PER_SEC ; 
 int NSEC_PER_USEC ; 
 int TICK_NSEC ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int*) ; 

void FUNC1(const unsigned long jiffies, struct timeval *value)
{
	/*
	 * Convert jiffies to nanoseconds and separate with
	 * one divide.
	 */
	u32 rem;

	value->tv_sec = FUNC0((u64)jiffies * TICK_NSEC,
				    NSEC_PER_SEC, &rem);
	value->tv_usec = rem / NSEC_PER_USEC;
}