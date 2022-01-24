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
typedef  void* u64 ;
struct task_struct {int dummy; } ;
struct pmu {int /*<<< orphan*/  task_ctx_size; } ;
struct perf_event_context {int /*<<< orphan*/  lock; scalar_t__ task_ctx_data; } ;
struct hw_perf_event {int /*<<< orphan*/  period_left; void* last_period; void* sample_period; } ;
struct TYPE_2__ {scalar_t__ freq; } ;
struct perf_event {int state; int attach_state; int /*<<< orphan*/  child_mutex; int /*<<< orphan*/  child_list; int /*<<< orphan*/  overflow_handler_context; int /*<<< orphan*/  overflow_handler; struct perf_event_context* ctx; struct hw_perf_event hw; TYPE_1__ attr; int /*<<< orphan*/  refcount; struct pmu* pmu; int /*<<< orphan*/  cpu; struct perf_event* parent; } ;
typedef  enum perf_event_state { ____Placeholder_perf_event_state } perf_event_state ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct perf_event*) ; 
 int PERF_ATTACH_TASK_DATA ; 
 int PERF_EVENT_STATE_INACTIVE ; 
 int PERF_EVENT_STATE_OFF ; 
 int /*<<< orphan*/  FUNC1 (struct perf_event*,struct perf_event_context*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC4 (struct perf_event_context*) ; 
 scalar_t__ FUNC5 (struct perf_event*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC12 (struct perf_event*) ; 
 struct perf_event* FUNC13 (TYPE_1__*,int /*<<< orphan*/ ,struct task_struct*,struct perf_event*,struct perf_event*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static struct perf_event *
FUNC16(struct perf_event *parent_event,
	      struct task_struct *parent,
	      struct perf_event_context *parent_ctx,
	      struct task_struct *child,
	      struct perf_event *group_leader,
	      struct perf_event_context *child_ctx)
{
	enum perf_event_state parent_state = parent_event->state;
	struct perf_event *child_event;
	unsigned long flags;

	/*
	 * Instead of creating recursive hierarchies of events,
	 * we link inherited events back to the original parent,
	 * which has a filp for sure, which we use as the reference
	 * count:
	 */
	if (parent_event->parent)
		parent_event = parent_event->parent;

	child_event = FUNC13(&parent_event->attr,
					   parent_event->cpu,
					   child,
					   group_leader, parent_event,
					   NULL, NULL, -1);
	if (FUNC0(child_event))
		return child_event;


	if ((child_event->attach_state & PERF_ATTACH_TASK_DATA) &&
	    !child_ctx->task_ctx_data) {
		struct pmu *pmu = child_event->pmu;

		child_ctx->task_ctx_data = FUNC6(pmu->task_ctx_size,
						   GFP_KERNEL);
		if (!child_ctx->task_ctx_data) {
			FUNC3(child_event);
			return NULL;
		}
	}

	/*
	 * is_orphaned_event() and list_add_tail(&parent_event->child_list)
	 * must be under the same lock in order to serialize against
	 * perf_event_release_kernel(), such that either we must observe
	 * is_orphaned_event() or they will observe us on the child_list.
	 */
	FUNC9(&parent_event->child_mutex);
	if (FUNC5(parent_event) ||
	    !FUNC2(&parent_event->refcount)) {
		FUNC10(&parent_event->child_mutex);
		/* task_ctx_data is freed with child_ctx */
		FUNC3(child_event);
		return NULL;
	}

	FUNC4(child_ctx);

	/*
	 * Make the child state follow the state of the parent event,
	 * not its attr.disabled bit.  We hold the parent's mutex,
	 * so we won't race with perf_event_{en, dis}able_family.
	 */
	if (parent_state >= PERF_EVENT_STATE_INACTIVE)
		child_event->state = PERF_EVENT_STATE_INACTIVE;
	else
		child_event->state = PERF_EVENT_STATE_OFF;

	if (parent_event->attr.freq) {
		u64 sample_period = parent_event->hw.sample_period;
		struct hw_perf_event *hwc = &child_event->hw;

		hwc->sample_period = sample_period;
		hwc->last_period   = sample_period;

		FUNC8(&hwc->period_left, sample_period);
	}

	child_event->ctx = child_ctx;
	child_event->overflow_handler = parent_event->overflow_handler;
	child_event->overflow_handler_context
		= parent_event->overflow_handler_context;

	/*
	 * Precalculate sample_data sizes
	 */
	FUNC11(child_event);
	FUNC12(child_event);

	/*
	 * Link it up in the child's context:
	 */
	FUNC14(&child_ctx->lock, flags);
	FUNC1(child_event, child_ctx);
	FUNC15(&child_ctx->lock, flags);

	/*
	 * Link this into the parent event's child list
	 */
	FUNC7(&child_event->child_list, &parent_event->child_list);
	FUNC10(&parent_event->child_mutex);

	return child_event;
}