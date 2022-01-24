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
struct trace_kprobe {int /*<<< orphan*/  devent; int /*<<< orphan*/  tp; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIFF_ARG_TYPE ; 
 int EEXIST ; 
 int ENOENT ; 
 int /*<<< orphan*/  SAME_PROBE ; 
 int FUNC0 (struct trace_kprobe*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (struct trace_kprobe*,struct trace_kprobe*) ; 
 int /*<<< orphan*/  FUNC4 (struct trace_kprobe*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct trace_kprobe *tk, struct trace_kprobe *to)
{
	int ret;

	ret = FUNC6(&tk->tp, &to->tp);
	if (ret) {
		/* Note that argument starts index = 2 */
		FUNC8(ret + 1);
		FUNC7(0, DIFF_ARG_TYPE);
		return -EEXIST;
	}
	if (FUNC3(to, tk)) {
		FUNC8(0);
		FUNC7(0, SAME_PROBE);
		return -EEXIST;
	}

	/* Append to existing event */
	ret = FUNC5(&tk->tp, &to->tp);
	if (ret)
		return ret;

	/* Register k*probe */
	ret = FUNC0(tk);
	if (ret == -ENOENT && !FUNC4(tk)) {
		FUNC2("This probe might be able to register after target module is loaded. Continue.\n");
		ret = 0;
	}

	if (ret)
		FUNC9(&tk->tp);
	else
		FUNC1(&tk->devent);

	return ret;
}