#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct trace_probe_event {int dummy; } ;
struct trace_probe {TYPE_2__* event; int /*<<< orphan*/  list; } ;
struct trace_event_call {void* name; TYPE_1__* class; } ;
struct TYPE_3__ {void* system; int /*<<< orphan*/  fields; } ;
struct TYPE_4__ {TYPE_1__ class; int /*<<< orphan*/  probes; int /*<<< orphan*/  files; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct trace_probe*) ; 
 struct trace_event_call* FUNC5 (struct trace_probe*) ; 

int FUNC6(struct trace_probe *tp, const char *event,
		     const char *group)
{
	struct trace_event_call *call;
	int ret = 0;

	if (!event || !group)
		return -EINVAL;

	tp->event = FUNC2(sizeof(struct trace_probe_event), GFP_KERNEL);
	if (!tp->event)
		return -ENOMEM;

	FUNC0(&tp->event->files);
	FUNC0(&tp->event->class.fields);
	FUNC0(&tp->event->probes);
	FUNC0(&tp->list);
	FUNC3(&tp->event->probes, &tp->list);

	call = FUNC5(tp);
	call->class = &tp->event->class;
	call->name = FUNC1(event, GFP_KERNEL);
	if (!call->name) {
		ret = -ENOMEM;
		goto error;
	}

	tp->event->class.system = FUNC1(group, GFP_KERNEL);
	if (!tp->event->class.system) {
		ret = -ENOMEM;
		goto error;
	}

	return 0;

error:
	FUNC4(tp);
	return ret;
}