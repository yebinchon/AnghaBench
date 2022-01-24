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
struct k_itimer {int /*<<< orphan*/  it_clock; } ;

/* Variables and functions */
 int /*<<< orphan*/  THREAD_CLOCK ; 
 int FUNC0 (struct k_itimer*) ; 

__attribute__((used)) static int FUNC1(struct k_itimer *timer)
{
	timer->it_clock = THREAD_CLOCK;
	return FUNC0(timer);
}