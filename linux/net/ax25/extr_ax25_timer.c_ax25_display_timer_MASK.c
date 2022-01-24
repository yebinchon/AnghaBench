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
struct timer_list {unsigned long expires; } ;

/* Variables and functions */
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC0 (struct timer_list*) ; 

unsigned long FUNC1(struct timer_list *timer)
{
	if (!FUNC0(timer))
		return 0;

	return timer->expires - jiffies;
}