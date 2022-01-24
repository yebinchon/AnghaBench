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
struct trace_array {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  LOCKDOWN_TRACEFS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct trace_array*) ; 
 scalar_t__ tracing_disabled ; 

int FUNC2(struct trace_array *tr)
{
	int ret;

	ret = FUNC0(LOCKDOWN_TRACEFS);
	if (ret)
		return ret;

	if (tracing_disabled)
		return -ENODEV;

	if (tr && FUNC1(tr) < 0)
		return -ENODEV;

	return 0;
}