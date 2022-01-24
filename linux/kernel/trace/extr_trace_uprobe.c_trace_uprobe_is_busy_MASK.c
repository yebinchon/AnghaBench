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
struct trace_uprobe {int /*<<< orphan*/  tp; } ;
struct dyn_event {int dummy; } ;

/* Variables and functions */
 struct trace_uprobe* FUNC0 (struct dyn_event*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC2(struct dyn_event *ev)
{
	struct trace_uprobe *tu = FUNC0(ev);

	return FUNC1(&tu->tp);
}