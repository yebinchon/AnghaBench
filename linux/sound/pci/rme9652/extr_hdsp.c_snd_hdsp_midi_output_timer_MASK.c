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
struct timer_list {int dummy; } ;
struct hdsp_midi {int /*<<< orphan*/  lock; int /*<<< orphan*/  timer; scalar_t__ istimer; } ;

/* Variables and functions */
 struct hdsp_midi* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 struct hdsp_midi* hmidi ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct hdsp_midi*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  timer ; 

__attribute__((used)) static void FUNC5(struct timer_list *t)
{
	struct hdsp_midi *hmidi = FUNC0(hmidi, t, timer);
	unsigned long flags;

	FUNC2(hmidi);
	FUNC3 (&hmidi->lock, flags);

	/* this does not bump hmidi->istimer, because the
	   kernel automatically removed the timer when it
	   expired, and we are now adding it back, thus
	   leaving istimer wherever it was set before.
	*/

	if (hmidi->istimer)
		FUNC1(&hmidi->timer, 1 + jiffies);

	FUNC4 (&hmidi->lock, flags);
}