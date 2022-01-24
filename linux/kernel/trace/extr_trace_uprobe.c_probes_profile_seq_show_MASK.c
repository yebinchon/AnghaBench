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
struct trace_uprobe {int /*<<< orphan*/  nhit; int /*<<< orphan*/  tp; int /*<<< orphan*/  filename; } ;
struct seq_file {int dummy; } ;
struct dyn_event {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dyn_event*) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct trace_uprobe* FUNC2 (struct dyn_event*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct seq_file *m, void *v)
{
	struct dyn_event *ev = v;
	struct trace_uprobe *tu;

	if (!FUNC0(ev))
		return 0;

	tu = FUNC2(ev);
	FUNC1(m, "  %s %-44s %15lu\n", tu->filename,
			FUNC3(&tu->tp), tu->nhit);
	return 0;
}