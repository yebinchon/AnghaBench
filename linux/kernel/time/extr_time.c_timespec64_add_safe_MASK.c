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
typedef  scalar_t__ timeu64_t ;
struct timespec64 {scalar_t__ tv_sec; scalar_t__ tv_nsec; } ;

/* Variables and functions */
 scalar_t__ TIME64_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct timespec64*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (int) ; 

struct timespec64 FUNC2(const struct timespec64 lhs,
				const struct timespec64 rhs)
{
	struct timespec64 res;

	FUNC0(&res, (timeu64_t) lhs.tv_sec + rhs.tv_sec,
			lhs.tv_nsec + rhs.tv_nsec);

	if (FUNC1(res.tv_sec < lhs.tv_sec || res.tv_sec < rhs.tv_sec)) {
		res.tv_sec = TIME64_MAX;
		res.tv_nsec = 0;
	}

	return res;
}