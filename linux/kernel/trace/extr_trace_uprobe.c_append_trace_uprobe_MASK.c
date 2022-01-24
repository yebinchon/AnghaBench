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
struct trace_uprobe {int /*<<< orphan*/  devent; int /*<<< orphan*/  tp; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIFF_ARG_TYPE ; 
 int EEXIST ; 
 int /*<<< orphan*/  SAME_PROBE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (struct trace_uprobe*,struct trace_uprobe*) ; 

__attribute__((used)) static int FUNC6(struct trace_uprobe *tu, struct trace_uprobe *to)
{
	int ret;

	ret = FUNC2(&tu->tp, &to->tp);
	if (ret) {
		/* Note that argument starts index = 2 */
		FUNC4(ret + 1);
		FUNC3(0, DIFF_ARG_TYPE);
		return -EEXIST;
	}
	if (FUNC5(to, tu)) {
		FUNC4(0);
		FUNC3(0, SAME_PROBE);
		return -EEXIST;
	}

	/* Append to existing event */
	ret = FUNC1(&tu->tp, &to->tp);
	if (!ret)
		FUNC0(&tu->devent);

	return ret;
}