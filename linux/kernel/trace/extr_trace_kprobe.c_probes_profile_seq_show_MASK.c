#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  nmissed; } ;
struct TYPE_4__ {TYPE_1__ kp; } ;
struct trace_kprobe {TYPE_2__ rp; int /*<<< orphan*/  tp; } ;
struct seq_file {int dummy; } ;
struct dyn_event {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dyn_event*) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct trace_kprobe* FUNC2 (struct dyn_event*) ; 
 int /*<<< orphan*/  FUNC3 (struct trace_kprobe*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct seq_file *m, void *v)
{
	struct dyn_event *ev = v;
	struct trace_kprobe *tk;

	if (!FUNC0(ev))
		return 0;

	tk = FUNC2(ev);
	FUNC1(m, "  %-44s %15lu %15lu\n",
		   FUNC4(&tk->tp),
		   FUNC3(tk),
		   tk->rp.kp.nmissed);

	return 0;
}