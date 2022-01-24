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

/* Variables and functions */
 scalar_t__ FUNC0 (char*,char const* const) ; 
 scalar_t__ FUNC1 (char*,char const* const,int) ; 

__attribute__((used)) static int FUNC2(char const *const txtname)
{
	return FUNC1(".text",          txtname, 5) == 0 ||
		FUNC0(".init.text",     txtname) == 0 ||
		FUNC0(".ref.text",      txtname) == 0 ||
		FUNC0(".sched.text",    txtname) == 0 ||
		FUNC0(".spinlock.text", txtname) == 0 ||
		FUNC0(".irqentry.text", txtname) == 0 ||
		FUNC0(".softirqentry.text", txtname) == 0 ||
		FUNC0(".kprobes.text", txtname) == 0 ||
		FUNC0(".cpuidle.text", txtname) == 0;
}