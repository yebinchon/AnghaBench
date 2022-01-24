#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  system; } ;
struct synth_event {TYPE_1__ class; } ;
struct seq_file {int dummy; } ;
struct dyn_event {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct seq_file*,struct synth_event*) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,int /*<<< orphan*/ ) ; 
 struct synth_event* FUNC2 (struct dyn_event*) ; 

__attribute__((used)) static int FUNC3(struct seq_file *m, struct dyn_event *ev)
{
	struct synth_event *event = FUNC2(ev);

	FUNC1(m, "s:%s/", event->class.system);

	return FUNC0(m, event);
}