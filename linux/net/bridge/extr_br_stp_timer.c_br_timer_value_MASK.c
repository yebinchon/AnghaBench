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
struct timer_list {scalar_t__ expires; } ;

/* Variables and functions */
 scalar_t__ jiffies ; 
 unsigned long FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (struct timer_list const*) ; 

unsigned long FUNC2(const struct timer_list *timer)
{
	return FUNC1(timer)
		? FUNC0(timer->expires - jiffies) : 0;
}