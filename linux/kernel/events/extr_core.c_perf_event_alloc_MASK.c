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
struct task_struct {int dummy; } ;
struct pmu {int capabilities; int nr_addr_filters; int /*<<< orphan*/  module; } ;
struct perf_event_attr {int sample_period; int sample_type; int /*<<< orphan*/  sample_max_stack; scalar_t__ aux_output; scalar_t__ branch_sample_type; scalar_t__ inherit; scalar_t__ sample_freq; scalar_t__ freq; } ;
struct hw_perf_event {int sample_period; int last_period; scalar_t__ target; int /*<<< orphan*/  period_left; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  list; } ;
struct perf_event {int pending_disable; int cpu; int oncpu; scalar_t__ overflow_handler; int addr_filters_gen; struct hw_perf_event hw; scalar_t__ ns; int /*<<< orphan*/  (* destroy ) (struct perf_event*) ;struct perf_event* addr_filter_ranges; struct perf_event_attr attr; struct perf_event* parent; int /*<<< orphan*/ * overflow_handler_context; int /*<<< orphan*/  orig_overflow_handler; struct pmu* prog; int /*<<< orphan*/ * clock; int /*<<< orphan*/  attach_state; int /*<<< orphan*/  state; int /*<<< orphan*/  id; int /*<<< orphan*/ * pmu; struct perf_event* group_leader; int /*<<< orphan*/  refcount; TYPE_1__ addr_filters; int /*<<< orphan*/  mmap_mutex; int /*<<< orphan*/  pending; int /*<<< orphan*/  waitq; int /*<<< orphan*/  hlist_entry; int /*<<< orphan*/  active_entry; int /*<<< orphan*/  rb_entry; int /*<<< orphan*/  active_list; int /*<<< orphan*/  sibling_list; int /*<<< orphan*/  event_entry; int /*<<< orphan*/  child_list; int /*<<< orphan*/  child_mutex; } ;
struct perf_addr_filters_head {int /*<<< orphan*/  lock; } ;
struct perf_addr_filter_range {int dummy; } ;
struct bpf_prog {int capabilities; int nr_addr_filters; int /*<<< orphan*/  module; } ;
typedef  scalar_t__ perf_overflow_handler_t ;

/* Variables and functions */
 long EINVAL ; 
 long ENOMEM ; 
 long EOPNOTSUPP ; 
 struct perf_event* FUNC0 (long) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct pmu*) ; 
 int /*<<< orphan*/  PERF_ATTACH_TASK ; 
 int /*<<< orphan*/  PERF_EVENT_STATE_INACTIVE ; 
 int PERF_PMU_CAP_AUX_OUTPUT ; 
 int PERF_SAMPLE_CALLCHAIN ; 
 int PERF_SAMPLE_READ ; 
 long FUNC4 (struct pmu*) ; 
 int /*<<< orphan*/  FUNC5 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ bpf_overflow_handler ; 
 struct pmu* FUNC8 (struct pmu*) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC9 (struct perf_event*) ; 
 long FUNC10 (struct perf_event*) ; 
 long FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (struct task_struct*) ; 
 scalar_t__ FUNC14 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC15 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC16 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC19 (struct perf_event*) ; 
 scalar_t__ FUNC20 (struct perf_event*) ; 
 struct perf_event* FUNC21 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct perf_event*) ; 
 struct perf_event* FUNC23 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  local_clock ; 
 int /*<<< orphan*/  FUNC25 (struct perf_event*,struct perf_event*,int) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 unsigned int nr_cpu_ids ; 
 long FUNC28 (int,struct perf_event*,struct perf_event_attr*,struct perf_event*) ; 
 int /*<<< orphan*/  FUNC29 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC30 (struct perf_event*) ; 
 struct perf_addr_filters_head* FUNC31 (struct perf_event*) ; 
 int /*<<< orphan*/  perf_event_id ; 
 scalar_t__ perf_event_output_backward ; 
 scalar_t__ perf_event_output_forward ; 
 struct pmu* FUNC32 (struct perf_event*) ; 
 int /*<<< orphan*/  perf_pending_event ; 
 int /*<<< orphan*/  FUNC33 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC34 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC38 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC39 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct perf_event *
FUNC40(struct perf_event_attr *attr, int cpu,
		 struct task_struct *task,
		 struct perf_event *group_leader,
		 struct perf_event *parent_event,
		 perf_overflow_handler_t overflow_handler,
		 void *context, int cgroup_fd)
{
	struct pmu *pmu;
	struct perf_event *event;
	struct hw_perf_event *hwc;
	long err = -EINVAL;

	if ((unsigned)cpu >= nr_cpu_ids) {
		if (!task || cpu != -1)
			return FUNC0(-EINVAL);
	}

	event = FUNC23(sizeof(*event), GFP_KERNEL);
	if (!event)
		return FUNC0(-ENOMEM);

	/*
	 * Single events are their own group leaders, with an
	 * empty sibling list:
	 */
	if (!group_leader)
		group_leader = event;

	FUNC27(&event->child_mutex);
	FUNC2(&event->child_list);

	FUNC2(&event->event_entry);
	FUNC2(&event->sibling_list);
	FUNC2(&event->active_list);
	FUNC16(event);
	FUNC2(&event->rb_entry);
	FUNC2(&event->active_entry);
	FUNC2(&event->addr_filters.list);
	FUNC1(&event->hlist_entry);


	FUNC18(&event->waitq);
	event->pending_disable = -1;
	FUNC17(&event->pending, perf_pending_event);

	FUNC27(&event->mmap_mutex);
	FUNC35(&event->addr_filters.lock);

	FUNC7(&event->refcount, 1);
	event->cpu		= cpu;
	event->attr		= *attr;
	event->group_leader	= group_leader;
	event->pmu		= NULL;
	event->oncpu		= -1;

	event->parent		= parent_event;

	event->ns		= FUNC12(FUNC39(current));
	event->id		= FUNC6(&perf_event_id);

	event->state		= PERF_EVENT_STATE_INACTIVE;

	if (task) {
		event->attach_state = PERF_ATTACH_TASK;
		/*
		 * XXX pmu::event_init needs to know what task to account to
		 * and we cannot use the ctx information because we need the
		 * pmu before we get a ctx.
		 */
		event->hw.target = FUNC13(task);
	}

	event->clock = &local_clock;
	if (parent_event)
		event->clock = parent_event->clock;

	if (!overflow_handler && parent_event) {
		overflow_handler = parent_event->overflow_handler;
		context = parent_event->overflow_handler_context;
#if defined(CONFIG_BPF_SYSCALL) && defined(CONFIG_EVENT_TRACING)
		if (overflow_handler == bpf_overflow_handler) {
			struct bpf_prog *prog = bpf_prog_inc(parent_event->prog);

			if (IS_ERR(prog)) {
				err = PTR_ERR(prog);
				goto err_ns;
			}
			event->prog = prog;
			event->orig_overflow_handler =
				parent_event->orig_overflow_handler;
		}
#endif
	}

	if (overflow_handler) {
		event->overflow_handler	= overflow_handler;
		event->overflow_handler_context = context;
	} else if (FUNC20(event)){
		event->overflow_handler = perf_event_output_backward;
		event->overflow_handler_context = NULL;
	} else {
		event->overflow_handler = perf_event_output_forward;
		event->overflow_handler_context = NULL;
	}

	FUNC30(event);

	pmu = NULL;

	hwc = &event->hw;
	hwc->sample_period = attr->sample_period;
	if (attr->freq && attr->sample_freq)
		hwc->sample_period = 1;
	hwc->last_period = hwc->sample_period;

	FUNC24(&hwc->period_left, hwc->sample_period);

	/*
	 * We currently do not support PERF_SAMPLE_READ on inherited events.
	 * See perf_output_read().
	 */
	if (attr->inherit && (attr->sample_type & PERF_SAMPLE_READ))
		goto err_ns;

	if (!FUNC15(event))
		event->attr.branch_sample_type = 0;

	if (cgroup_fd != -1) {
		err = FUNC28(cgroup_fd, event, attr, group_leader);
		if (err)
			goto err_ns;
	}

	pmu = FUNC32(event);
	if (FUNC3(pmu)) {
		err = FUNC4(pmu);
		goto err_ns;
	}

	if (event->attr.aux_output &&
	    !(pmu->capabilities & PERF_PMU_CAP_AUX_OUTPUT)) {
		err = -EOPNOTSUPP;
		goto err_pmu;
	}

	err = FUNC10(event);
	if (err)
		goto err_pmu;

	if (FUNC14(event)) {
		event->addr_filter_ranges = FUNC21(pmu->nr_addr_filters,
						    sizeof(struct perf_addr_filter_range),
						    GFP_KERNEL);
		if (!event->addr_filter_ranges) {
			err = -ENOMEM;
			goto err_per_task;
		}

		/*
		 * Clone the parent's vma offsets: they are valid until exec()
		 * even if the mm is not shared with the parent.
		 */
		if (event->parent) {
			struct perf_addr_filters_head *ifh = FUNC31(event);

			FUNC36(&ifh->lock);
			FUNC25(event->addr_filter_ranges,
			       event->parent->addr_filter_ranges,
			       pmu->nr_addr_filters * sizeof(struct perf_addr_filter_range));
			FUNC37(&ifh->lock);
		}

		/* force hw sync on the address filters */
		event->addr_filters_gen = 1;
	}

	if (!event->parent) {
		if (event->attr.sample_type & PERF_SAMPLE_CALLCHAIN) {
			err = FUNC11(attr->sample_max_stack);
			if (err)
				goto err_addr_filters;
		}
	}

	/* symmetric to unaccount_event() in _free_event() */
	FUNC5(event);

	return event;

err_addr_filters:
	FUNC22(event->addr_filter_ranges);

err_per_task:
	FUNC9(event);

err_pmu:
	if (event->destroy)
		event->destroy(event);
	FUNC26(pmu->module);
err_ns:
	if (FUNC19(event))
		FUNC29(event);
	if (event->ns)
		FUNC33(event->ns);
	if (event->hw.target)
		FUNC34(event->hw.target);
	FUNC22(event);

	return FUNC0(err);
}