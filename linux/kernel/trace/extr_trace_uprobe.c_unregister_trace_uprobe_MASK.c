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
struct trace_uprobe {int /*<<< orphan*/  tp; int /*<<< orphan*/  devent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct trace_uprobe*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct trace_uprobe*) ; 

__attribute__((used)) static int FUNC5(struct trace_uprobe *tu)
{
	int ret;

	if (FUNC2(&tu->tp))
		goto unreg;

	ret = FUNC4(tu);
	if (ret)
		return ret;

unreg:
	FUNC0(&tu->devent);
	FUNC3(&tu->tp);
	FUNC1(tu);
	return 0;
}