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
typedef  scalar_t__ u64 ;
struct timespec {int tv_sec; scalar_t__ tv_nsec; } ;
typedef  int /*<<< orphan*/  clockid_t ;

/* Variables and functions */
 int NSEC_PER_SEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct timespec*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static int FUNC2(clockid_t clk_id, u64 *res_ns)
{
	struct timespec res;

	*res_ns = 0;
	if (!FUNC0(clk_id, &res))
		*res_ns = res.tv_nsec + res.tv_sec * NSEC_PER_SEC;
	else
		FUNC1("WARNING: Failed to determine specified clock resolution.\n");

	return 0;
}