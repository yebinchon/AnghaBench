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
struct hrtimer_cpu_base {int hres_active; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_HIGH_RES_TIMERS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC1(struct hrtimer_cpu_base *cpu_base)
{
	return FUNC0(CONFIG_HIGH_RES_TIMERS) ?
		cpu_base->hres_active : 0;
}