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
struct trace_kprobe {int dummy; } ;
struct dyn_event {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct trace_kprobe*) ; 
 struct trace_kprobe* FUNC1 (struct dyn_event*) ; 
 int FUNC2 (struct trace_kprobe*) ; 

__attribute__((used)) static int FUNC3(struct dyn_event *ev)
{
	struct trace_kprobe *tk = FUNC1(ev);
	int ret = FUNC2(tk);

	if (!ret)
		FUNC0(tk);
	return ret;
}