#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct trace_array {int clock_id; } ;
struct seq_file {struct trace_array* private; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,char*,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char) ; 
 TYPE_1__* trace_clocks ; 

__attribute__((used)) static int FUNC3(struct seq_file *m, void *v)
{
	struct trace_array *tr = m->private;
	int i;

	for (i = 0; i < FUNC0(trace_clocks); i++)
		FUNC1(m,
			"%s%s%s%s", i ? " " : "",
			i == tr->clock_id ? "[" : "", trace_clocks[i].name,
			i == tr->clock_id ? "]" : "");
	FUNC2(m, '\n');

	return 0;
}