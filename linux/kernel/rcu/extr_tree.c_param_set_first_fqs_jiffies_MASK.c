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
typedef  scalar_t__ ulong ;
struct kernel_param {scalar_t__ arg; } ;

/* Variables and functions */
 scalar_t__ HZ ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (char const*,int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static int FUNC3(const char *val, const struct kernel_param *kp)
{
	ulong j;
	int ret = FUNC2(val, 0, &j);

	if (!ret) {
		FUNC0(*(ulong *)kp->arg, (j > HZ) ? HZ : j);
		FUNC1();
	}
	return ret;
}