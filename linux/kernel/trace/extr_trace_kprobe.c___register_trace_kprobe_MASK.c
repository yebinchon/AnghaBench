#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  flags; } ;
struct TYPE_5__ {TYPE_3__ kp; } ;
struct TYPE_4__ {int nr_args; int /*<<< orphan*/ * args; } ;
struct trace_kprobe {TYPE_2__ rp; TYPE_1__ tp; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  KPROBE_FLAG_DISABLED ; 
 int /*<<< orphan*/  LOCKDOWN_KPROBES ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_3__*) ; 
 int FUNC2 (TYPE_2__*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct trace_kprobe*) ; 
 scalar_t__ FUNC5 (struct trace_kprobe*) ; 
 int /*<<< orphan*/  FUNC6 (struct trace_kprobe*) ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct trace_kprobe*) ; 

__attribute__((used)) static int FUNC10(struct trace_kprobe *tk)
{
	int i, ret;

	ret = FUNC3(LOCKDOWN_KPROBES);
	if (ret)
		return ret;

	if (FUNC4(tk))
		return -EINVAL;

	if (FUNC9(tk)) {
		FUNC0("Could not probe notrace function %s\n",
			FUNC6(tk));
		return -EINVAL;
	}

	for (i = 0; i < tk->tp.nr_args; i++) {
		ret = FUNC8(&tk->tp.args[i]);
		if (ret)
			return ret;
	}

	/* Set/clear disabled flag according to tp->flag */
	if (FUNC7(&tk->tp))
		tk->rp.kp.flags &= ~KPROBE_FLAG_DISABLED;
	else
		tk->rp.kp.flags |= KPROBE_FLAG_DISABLED;

	if (FUNC5(tk))
		ret = FUNC2(&tk->rp);
	else
		ret = FUNC1(&tk->rp.kp);

	return ret;
}