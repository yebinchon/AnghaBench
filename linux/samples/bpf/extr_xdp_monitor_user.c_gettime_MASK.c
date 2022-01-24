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
struct timespec {int tv_nsec; scalar_t__ tv_sec; } ;
typedef  int __u64 ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int NANOSEC_PER_SEC ; 
 int FUNC0 (int /*<<< orphan*/ ,struct timespec*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static __u64 FUNC3(void)
{
	struct timespec t;
	int res;

	res = FUNC0(CLOCK_MONOTONIC, &t);
	if (res < 0) {
		FUNC2(stderr, "Error with gettimeofday! (%i)\n", res);
		FUNC1(EXIT_FAILURE);
	}
	return (__u64) t.tv_sec * NANOSEC_PER_SEC + t.tv_nsec;
}