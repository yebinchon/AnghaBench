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
 int /*<<< orphan*/  DIFF_PROBE_TYPE ; 
 int EEXIST ; 
 int ENOENT ; 
 int FUNC0 (struct trace_kprobe*) ; 
 int FUNC1 (struct trace_kprobe*,struct trace_kprobe*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  event_mutex ; 
 struct trace_kprobe* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int FUNC7 (struct trace_kprobe*) ; 
 scalar_t__ FUNC8 (struct trace_kprobe*) ; 
 int /*<<< orphan*/  FUNC9 (struct trace_kprobe*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct trace_kprobe*) ; 

__attribute__((used)) static int FUNC15(struct trace_kprobe *tk)
{
	struct trace_kprobe *old_tk;
	int ret;

	FUNC4(&event_mutex);

	old_tk = FUNC3(FUNC13(&tk->tp),
				   FUNC10(&tk->tp));
	if (old_tk) {
		if (FUNC8(tk) != FUNC8(old_tk)) {
			FUNC12(0);
			FUNC11(0, DIFF_PROBE_TYPE);
			ret = -EEXIST;
		} else {
			ret = FUNC1(tk, old_tk);
		}
		goto end;
	}

	/* Register new event */
	ret = FUNC7(tk);
	if (ret) {
		FUNC6("Failed to register probe event(%d)\n", ret);
		goto end;
	}

	/* Register k*probe */
	ret = FUNC0(tk);
	if (ret == -ENOENT && !FUNC9(tk)) {
		FUNC6("This probe might be able to register after target module is loaded. Continue.\n");
		ret = 0;
	}

	if (ret < 0)
		FUNC14(tk);
	else
		FUNC2(&tk->devent);

end:
	FUNC5(&event_mutex);
	return ret;
}