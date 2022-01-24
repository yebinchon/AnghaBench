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
 int /*<<< orphan*/  DIFF_PROBE_TYPE ; 
 int EEXIST ; 
 int FUNC0 (struct trace_uprobe*,struct trace_uprobe*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  event_mutex ; 
 struct trace_uprobe* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct trace_uprobe*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int FUNC7 (struct trace_uprobe*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (struct trace_uprobe*) ; 

__attribute__((used)) static int FUNC13(struct trace_uprobe *tu)
{
	struct trace_uprobe *old_tu;
	int ret;

	FUNC4(&event_mutex);

	ret = FUNC12(tu);
	if (ret)
		goto end;

	/* register as an event */
	old_tu = FUNC2(FUNC11(&tu->tp),
				  FUNC8(&tu->tp));
	if (old_tu) {
		if (FUNC3(tu) != FUNC3(old_tu)) {
			FUNC10(0);
			FUNC9(0, DIFF_PROBE_TYPE);
			ret = -EEXIST;
		} else {
			ret = FUNC0(tu, old_tu);
		}
		goto end;
	}

	ret = FUNC7(tu);
	if (ret) {
		FUNC6("Failed to register probe event(%d)\n", ret);
		goto end;
	}

	FUNC1(&tu->devent);

end:
	FUNC5(&event_mutex);

	return ret;
}