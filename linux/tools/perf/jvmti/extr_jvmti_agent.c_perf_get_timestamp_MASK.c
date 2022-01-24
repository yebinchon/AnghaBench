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
typedef  int /*<<< orphan*/  uint64_t ;
struct timespec {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,struct timespec*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  perf_clk_id ; 
 int /*<<< orphan*/  FUNC2 (struct timespec*) ; 
 scalar_t__ use_arch_timestamp ; 

__attribute__((used)) static inline uint64_t
FUNC3(void)
{
	struct timespec ts;
	int ret;

	if (use_arch_timestamp)
		return FUNC1();

	ret = FUNC0(perf_clk_id, &ts);
	if (ret)
		return 0;

	return FUNC2(&ts);
}