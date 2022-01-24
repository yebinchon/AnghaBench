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
struct synth_event {scalar_t__ ref; } ;
struct dyn_event {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (struct dyn_event*) ; 
 int /*<<< orphan*/  FUNC1 (struct synth_event*) ; 
 struct synth_event* FUNC2 (struct dyn_event*) ; 
 int FUNC3 (struct synth_event*) ; 

__attribute__((used)) static int FUNC4(struct dyn_event *ev)
{
	struct synth_event *event = FUNC2(ev);
	int ret;

	if (event->ref)
		return -EBUSY;

	ret = FUNC3(event);
	if (ret)
		return ret;

	FUNC0(ev);
	FUNC1(event);
	return 0;
}