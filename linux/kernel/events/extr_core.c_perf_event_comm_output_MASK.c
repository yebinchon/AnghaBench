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
struct TYPE_4__ {int size; } ;
struct TYPE_3__ {TYPE_2__ header; int /*<<< orphan*/  tid; int /*<<< orphan*/  pid; } ;
struct perf_comm_event {TYPE_1__ event_id; int /*<<< orphan*/  comm_size; int /*<<< orphan*/  comm; int /*<<< orphan*/  task; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct perf_output_handle*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct perf_event*,struct perf_output_handle*,struct perf_sample_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,struct perf_sample_data*,struct perf_event*) ; 
 int /*<<< orphan*/  FUNC4 (struct perf_event*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct perf_event*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct perf_output_handle*,struct perf_event*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct perf_output_handle*) ; 
 int /*<<< orphan*/  FUNC8 (struct perf_output_handle*,TYPE_1__) ; 

__attribute__((used)) static void FUNC9(struct perf_event *event,
				   void *data)
{
	struct perf_comm_event *comm_event = data;
	struct perf_output_handle handle;
	struct perf_sample_data sample;
	int size = comm_event->event_id.header.size;
	int ret;

	if (!FUNC2(event))
		return;

	FUNC3(&comm_event->event_id.header, &sample, event);
	ret = FUNC6(&handle, event,
				comm_event->event_id.header.size);

	if (ret)
		goto out;

	comm_event->event_id.pid = FUNC4(event, comm_event->task);
	comm_event->event_id.tid = FUNC5(event, comm_event->task);

	FUNC8(&handle, comm_event->event_id);
	FUNC0(&handle, comm_event->comm,
				   comm_event->comm_size);

	FUNC1(event, &handle, &sample);

	FUNC7(&handle);
out:
	comm_event->event_id.header.size = size;
}