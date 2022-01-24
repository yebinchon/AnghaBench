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
struct rfcomm_dlc {int /*<<< orphan*/  flags; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct rfcomm_dlc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RFCOMM_TIMED_OUT ; 
 struct rfcomm_dlc* d ; 
 struct rfcomm_dlc* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rfcomm_dlc*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  timer ; 

__attribute__((used)) static void FUNC5(struct timer_list *t)
{
	struct rfcomm_dlc *d = FUNC1(d, t, timer);

	FUNC0("dlc %p state %ld", d, d->state);

	FUNC4(RFCOMM_TIMED_OUT, &d->flags);
	FUNC2(d);
	FUNC3();
}