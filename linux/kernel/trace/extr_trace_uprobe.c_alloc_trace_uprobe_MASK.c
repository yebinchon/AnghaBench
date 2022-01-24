#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  ret_handler; int /*<<< orphan*/  handler; } ;
struct trace_uprobe {int /*<<< orphan*/  filter; TYPE_1__ consumer; int /*<<< orphan*/  devent; int /*<<< orphan*/  tp; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct trace_uprobe* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct trace_uprobe*) ; 
 struct trace_uprobe* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int /*<<< orphan*/  trace_uprobe_ops ; 
 int /*<<< orphan*/  uprobe_dispatcher ; 
 int /*<<< orphan*/  uretprobe_dispatcher ; 

__attribute__((used)) static struct trace_uprobe *
FUNC7(const char *group, const char *event, int nargs, bool is_ret)
{
	struct trace_uprobe *tu;
	int ret;

	tu = FUNC5(FUNC1(nargs), GFP_KERNEL);
	if (!tu)
		return FUNC0(-ENOMEM);

	ret = FUNC6(&tu->tp, event, group);
	if (ret < 0)
		goto error;

	FUNC2(&tu->devent, &trace_uprobe_ops);
	tu->consumer.handler = uprobe_dispatcher;
	if (is_ret)
		tu->consumer.ret_handler = uretprobe_dispatcher;
	FUNC3(&tu->filter);
	return tu;

error:
	FUNC4(tu);

	return FUNC0(ret);
}