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
struct perf_event {int /*<<< orphan*/ * prog; TYPE_1__* tp_event; } ;
struct bpf_prog_array {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  prog_array; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  bpf_event_mutex ; 
 struct bpf_prog_array* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct bpf_prog_array*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct bpf_prog_array**) ; 
 int /*<<< orphan*/  FUNC2 (struct bpf_prog_array*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct bpf_prog_array*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct bpf_prog_array*) ; 

void FUNC8(struct perf_event *event)
{
	struct bpf_prog_array *old_array;
	struct bpf_prog_array *new_array;
	int ret;

	FUNC5(&bpf_event_mutex);

	if (!event->prog)
		goto unlock;

	old_array = FUNC0(event->tp_event->prog_array);
	ret = FUNC1(old_array, event->prog, NULL, &new_array);
	if (ret == -ENOENT)
		goto unlock;
	if (ret < 0) {
		FUNC2(old_array, event->prog);
	} else {
		FUNC7(event->tp_event->prog_array, new_array);
		FUNC3(old_array);
	}

	FUNC4(event->prog);
	event->prog = NULL;

unlock:
	FUNC6(&bpf_event_mutex);
}