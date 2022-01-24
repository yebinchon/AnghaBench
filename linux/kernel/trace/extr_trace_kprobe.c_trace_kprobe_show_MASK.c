#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int nr_args; TYPE_3__* args; } ;
struct TYPE_6__ {scalar_t__ offset; int /*<<< orphan*/  addr; } ;
struct TYPE_7__ {TYPE_1__ kp; } ;
struct trace_kprobe {TYPE_4__ tp; TYPE_2__ rp; int /*<<< orphan*/  symbol; } ;
struct seq_file {int dummy; } ;
struct dyn_event {int dummy; } ;
struct TYPE_8__ {scalar_t__ comm; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char) ; 
 struct trace_kprobe* FUNC2 (struct dyn_event*) ; 
 scalar_t__ FUNC3 (struct trace_kprobe*) ; 
 int /*<<< orphan*/  FUNC4 (struct trace_kprobe*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 scalar_t__ FUNC6 (TYPE_4__*) ; 

__attribute__((used)) static int FUNC7(struct seq_file *m, struct dyn_event *ev)
{
	struct trace_kprobe *tk = FUNC2(ev);
	int i;

	FUNC1(m, FUNC3(tk) ? 'r' : 'p');
	FUNC0(m, ":%s/%s", FUNC5(&tk->tp),
				FUNC6(&tk->tp));

	if (!tk->symbol)
		FUNC0(m, " 0x%p", tk->rp.kp.addr);
	else if (tk->rp.kp.offset)
		FUNC0(m, " %s+%u", FUNC4(tk),
			   tk->rp.kp.offset);
	else
		FUNC0(m, " %s", FUNC4(tk));

	for (i = 0; i < tk->tp.nr_args; i++)
		FUNC0(m, " %s=%s", tk->tp.args[i].name, tk->tp.args[i].comm);
	FUNC1(m, '\n');

	return 0;
}