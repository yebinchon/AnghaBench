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
typedef  long long s64 ;

/* Variables and functions */
 long long RATELIMIT_CALC_SHIFT ; 
 long long FUNC0 (long long,long long,long long) ; 
 long FUNC1 (long long,unsigned long) ; 

__attribute__((used)) static long long FUNC2(unsigned long setpoint,
					  unsigned long dirty,
					  unsigned long limit)
{
	long long pos_ratio;
	long x;

	x = FUNC1(((s64)setpoint - (s64)dirty) << RATELIMIT_CALC_SHIFT,
		      (limit - setpoint) | 1);
	pos_ratio = x;
	pos_ratio = pos_ratio * x >> RATELIMIT_CALC_SHIFT;
	pos_ratio = pos_ratio * x >> RATELIMIT_CALC_SHIFT;
	pos_ratio += 1 << RATELIMIT_CALC_SHIFT;

	return FUNC0(pos_ratio, 0LL, 2LL << RATELIMIT_CALC_SHIFT);
}