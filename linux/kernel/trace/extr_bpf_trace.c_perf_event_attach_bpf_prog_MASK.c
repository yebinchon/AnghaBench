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
struct perf_event {TYPE_1__* tp_event; struct bpf_prog* prog; } ;
struct bpf_prog_array {int dummy; } ;
struct bpf_prog {scalar_t__ kprobe_override; } ;
struct TYPE_3__ {int /*<<< orphan*/  prog_array; } ;

/* Variables and functions */
 scalar_t__ BPF_TRACE_MAX_PROGS ; 
 int E2BIG ; 
 int EEXIST ; 
 int EINVAL ; 
 int /*<<< orphan*/  bpf_event_mutex ; 
 struct bpf_prog_array* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct bpf_prog_array*,int /*<<< orphan*/ *,struct bpf_prog*,struct bpf_prog_array**) ; 
 int /*<<< orphan*/  FUNC2 (struct bpf_prog_array*) ; 
 scalar_t__ FUNC3 (struct bpf_prog_array*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct bpf_prog_array*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

int FUNC9(struct perf_event *event,
			       struct bpf_prog *prog)
{
	struct bpf_prog_array *old_array;
	struct bpf_prog_array *new_array;
	int ret = -EEXIST;

	/*
	 * Kprobe override only works if they are on the function entry,
	 * and only if they are on the opt-in list.
	 */
	if (prog->kprobe_override &&
	    (!FUNC8(event->tp_event) ||
	     !FUNC7(event->tp_event)))
		return -EINVAL;

	FUNC4(&bpf_event_mutex);

	if (event->prog)
		goto unlock;

	old_array = FUNC0(event->tp_event->prog_array);
	if (old_array &&
	    FUNC3(old_array) >= BPF_TRACE_MAX_PROGS) {
		ret = -E2BIG;
		goto unlock;
	}

	ret = FUNC1(old_array, NULL, prog, &new_array);
	if (ret < 0)
		goto unlock;

	/* set the new array to event->tp_event and set event->prog */
	event->prog = prog;
	FUNC6(event->tp_event->prog_array, new_array);
	FUNC2(old_array);

unlock:
	FUNC5(&bpf_event_mutex);
	return ret;
}