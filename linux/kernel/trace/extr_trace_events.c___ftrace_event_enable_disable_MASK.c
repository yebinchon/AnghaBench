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
struct trace_event_file {unsigned long flags; int /*<<< orphan*/  sm_ref; struct trace_array* tr; struct trace_event_call* event_call; } ;
struct trace_event_call {TYPE_1__* class; } ;
struct trace_array {int trace_flags; } ;
struct TYPE_2__ {int (* reg ) (struct trace_event_call*,int /*<<< orphan*/ ,struct trace_event_file*) ;} ;

/* Variables and functions */
 int EVENT_FILE_FL_ENABLED ; 
 int /*<<< orphan*/  EVENT_FILE_FL_ENABLED_BIT ; 
 int EVENT_FILE_FL_RECORDED_CMD ; 
 int /*<<< orphan*/  EVENT_FILE_FL_RECORDED_CMD_BIT ; 
 int EVENT_FILE_FL_RECORDED_TGID ; 
 int /*<<< orphan*/  EVENT_FILE_FL_RECORDED_TGID_BIT ; 
 unsigned long EVENT_FILE_FL_SOFT_DISABLED ; 
 int /*<<< orphan*/  EVENT_FILE_FL_SOFT_DISABLED_BIT ; 
 int EVENT_FILE_FL_SOFT_MODE ; 
 int /*<<< orphan*/  EVENT_FILE_FL_SOFT_MODE_BIT ; 
 int /*<<< orphan*/  EVENT_FILE_FL_WAS_ENABLED_BIT ; 
 int TRACE_ITER_RECORD_CMD ; 
 int TRACE_ITER_RECORD_TGID ; 
 int /*<<< orphan*/  TRACE_REG_REGISTER ; 
 int /*<<< orphan*/  TRACE_REG_UNREGISTER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int*) ; 
 int FUNC5 (struct trace_event_call*,int /*<<< orphan*/ ,struct trace_event_file*) ; 
 int FUNC6 (struct trace_event_call*,int /*<<< orphan*/ ,struct trace_event_file*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct trace_event_call*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 

__attribute__((used)) static int FUNC14(struct trace_event_file *file,
					 int enable, int soft_disable)
{
	struct trace_event_call *call = file->event_call;
	struct trace_array *tr = file->tr;
	unsigned long file_flags = file->flags;
	int ret = 0;
	int disable;

	switch (enable) {
	case 0:
		/*
		 * When soft_disable is set and enable is cleared, the sm_ref
		 * reference counter is decremented. If it reaches 0, we want
		 * to clear the SOFT_DISABLED flag but leave the event in the
		 * state that it was. That is, if the event was enabled and
		 * SOFT_DISABLED isn't set, then do nothing. But if SOFT_DISABLED
		 * is set we do not want the event to be enabled before we
		 * clear the bit.
		 *
		 * When soft_disable is not set but the SOFT_MODE flag is,
		 * we do nothing. Do not disable the tracepoint, otherwise
		 * "soft enable"s (clearing the SOFT_DISABLED bit) wont work.
		 */
		if (soft_disable) {
			if (FUNC0(&file->sm_ref) > 0)
				break;
			disable = file->flags & EVENT_FILE_FL_SOFT_DISABLED;
			FUNC2(EVENT_FILE_FL_SOFT_MODE_BIT, &file->flags);
		} else
			disable = !(file->flags & EVENT_FILE_FL_SOFT_MODE);

		if (disable && (file->flags & EVENT_FILE_FL_ENABLED)) {
			FUNC2(EVENT_FILE_FL_ENABLED_BIT, &file->flags);
			if (file->flags & EVENT_FILE_FL_RECORDED_CMD) {
				FUNC12();
				FUNC2(EVENT_FILE_FL_RECORDED_CMD_BIT, &file->flags);
			}

			if (file->flags & EVENT_FILE_FL_RECORDED_TGID) {
				FUNC13();
				FUNC2(EVENT_FILE_FL_RECORDED_TGID_BIT, &file->flags);
			}

			call->class->reg(call, TRACE_REG_UNREGISTER, file);
		}
		/* If in SOFT_MODE, just set the SOFT_DISABLE_BIT, else clear it */
		if (file->flags & EVENT_FILE_FL_SOFT_MODE)
			FUNC4(EVENT_FILE_FL_SOFT_DISABLED_BIT, &file->flags);
		else
			FUNC2(EVENT_FILE_FL_SOFT_DISABLED_BIT, &file->flags);
		break;
	case 1:
		/*
		 * When soft_disable is set and enable is set, we want to
		 * register the tracepoint for the event, but leave the event
		 * as is. That means, if the event was already enabled, we do
		 * nothing (but set SOFT_MODE). If the event is disabled, we
		 * set SOFT_DISABLED before enabling the event tracepoint, so
		 * it still seems to be disabled.
		 */
		if (!soft_disable)
			FUNC2(EVENT_FILE_FL_SOFT_DISABLED_BIT, &file->flags);
		else {
			if (FUNC1(&file->sm_ref) > 1)
				break;
			FUNC4(EVENT_FILE_FL_SOFT_MODE_BIT, &file->flags);
		}

		if (!(file->flags & EVENT_FILE_FL_ENABLED)) {
			bool cmd = false, tgid = false;

			/* Keep the event disabled, when going to SOFT_MODE. */
			if (soft_disable)
				FUNC4(EVENT_FILE_FL_SOFT_DISABLED_BIT, &file->flags);

			if (tr->trace_flags & TRACE_ITER_RECORD_CMD) {
				cmd = true;
				FUNC10();
				FUNC4(EVENT_FILE_FL_RECORDED_CMD_BIT, &file->flags);
			}

			if (tr->trace_flags & TRACE_ITER_RECORD_TGID) {
				tgid = true;
				FUNC11();
				FUNC4(EVENT_FILE_FL_RECORDED_TGID_BIT, &file->flags);
			}

			ret = call->class->reg(call, TRACE_REG_REGISTER, file);
			if (ret) {
				if (cmd)
					FUNC12();
				if (tgid)
					FUNC13();
				FUNC3("event trace: Could not enable event "
					"%s\n", FUNC9(call));
				break;
			}
			FUNC4(EVENT_FILE_FL_ENABLED_BIT, &file->flags);

			/* WAS_ENABLED gets set but never cleared. */
			FUNC4(EVENT_FILE_FL_WAS_ENABLED_BIT, &file->flags);
		}
		break;
	}

	/* Enable or disable use of trace_buffered_event */
	if ((file_flags & EVENT_FILE_FL_SOFT_DISABLED) !=
	    (file->flags & EVENT_FILE_FL_SOFT_DISABLED)) {
		if (file->flags & EVENT_FILE_FL_SOFT_DISABLED)
			FUNC8();
		else
			FUNC7();
	}

	return ret;
}