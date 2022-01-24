#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * funcs; } ;
struct trace_event_call {TYPE_2__ event; int /*<<< orphan*/ * tp; struct synth_event* data; TYPE_1__* class; int /*<<< orphan*/  flags; } ;
struct TYPE_4__ {int /*<<< orphan*/  probe; int /*<<< orphan*/  reg; int /*<<< orphan*/  define_fields; int /*<<< orphan*/  fields; int /*<<< orphan*/  system; } ;
struct synth_event {int /*<<< orphan*/ * tp; int /*<<< orphan*/  name; TYPE_1__ class; struct trace_event_call call; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SYNTH_SYSTEM ; 
 int /*<<< orphan*/  TRACE_EVENT_FL_TRACEPOINT ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_2__*) ; 
 int FUNC7 (struct trace_event_call*) ; 
 int /*<<< orphan*/  synth_event_define_fields ; 
 int /*<<< orphan*/  synth_event_funcs ; 
 int FUNC8 (struct trace_event_call*) ; 
 int /*<<< orphan*/  FUNC9 (struct trace_event_call*) ; 
 int /*<<< orphan*/  trace_event_raw_event_synth ; 
 int /*<<< orphan*/  trace_event_reg ; 
 int /*<<< orphan*/  FUNC10 (struct trace_event_call*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC12(struct synth_event *event)
{
	struct trace_event_call *call = &event->call;
	int ret = 0;

	event->call.class = &event->class;
	event->class.system = FUNC4(SYNTH_SYSTEM, GFP_KERNEL);
	if (!event->class.system) {
		ret = -ENOMEM;
		goto out;
	}

	event->tp = FUNC3(event->name);
	if (FUNC1(event->tp)) {
		ret = FUNC2(event->tp);
		event->tp = NULL;
		goto out;
	}

	FUNC0(&call->class->fields);
	call->event.funcs = &synth_event_funcs;
	call->class->define_fields = synth_event_define_fields;

	ret = FUNC6(&call->event);
	if (!ret) {
		ret = -ENODEV;
		goto out;
	}
	call->flags = TRACE_EVENT_FL_TRACEPOINT;
	call->class->reg = trace_event_reg;
	call->class->probe = trace_event_raw_event_synth;
	call->data = event;
	call->tp = event->tp;

	ret = FUNC8(call);
	if (ret) {
		FUNC5("Failed to register synthetic event: %s\n",
			FUNC9(call));
		goto err;
	}

	ret = FUNC7(call);
	if (ret < 0) {
		FUNC10(call);
		goto err;
	}
 out:
	return ret;
 err:
	FUNC11(&call->event);
	goto out;
}