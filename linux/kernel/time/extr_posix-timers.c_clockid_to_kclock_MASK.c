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
struct k_clock {int dummy; } ;
typedef  int clockid_t ;

/* Variables and functions */
 int const FUNC0 (struct k_clock const**) ; 
 int const CLOCKFD ; 
 int const CLOCKFD_MASK ; 
 size_t FUNC1 (int,int const) ; 
 struct k_clock const clock_posix_cpu ; 
 struct k_clock const clock_posix_dynamic ; 
 struct k_clock const** posix_clocks ; 

__attribute__((used)) static const struct k_clock *FUNC2(const clockid_t id)
{
	clockid_t idx = id;

	if (id < 0) {
		return (id & CLOCKFD_MASK) == CLOCKFD ?
			&clock_posix_dynamic : &clock_posix_cpu;
	}

	if (id >= FUNC0(posix_clocks))
		return NULL;

	return posix_clocks[FUNC1(idx, FUNC0(posix_clocks))];
}