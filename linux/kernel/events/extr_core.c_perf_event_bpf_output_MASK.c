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
struct perf_sample_data {int dummy; } ;
struct perf_output_handle {int dummy; } ;
struct perf_event {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  size; } ;
struct TYPE_3__ {TYPE_2__ header; } ;
struct perf_bpf_event {TYPE_1__ event_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct perf_event*,struct perf_output_handle*,struct perf_sample_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,struct perf_sample_data*,struct perf_event*) ; 
 int FUNC3 (struct perf_output_handle*,struct perf_event*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct perf_output_handle*) ; 
 int /*<<< orphan*/  FUNC5 (struct perf_output_handle*,TYPE_1__) ; 

__attribute__((used)) static void FUNC6(struct perf_event *event, void *data)
{
	struct perf_bpf_event *bpf_event = data;
	struct perf_output_handle handle;
	struct perf_sample_data sample;
	int ret;

	if (!FUNC1(event))
		return;

	FUNC2(&bpf_event->event_id.header,
				   &sample, event);
	ret = FUNC3(&handle, event,
				bpf_event->event_id.header.size);
	if (ret)
		return;

	FUNC5(&handle, bpf_event->event_id);
	FUNC0(event, &handle, &sample);

	FUNC4(&handle);
}