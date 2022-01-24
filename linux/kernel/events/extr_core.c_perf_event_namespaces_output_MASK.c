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
typedef  int /*<<< orphan*/  u16 ;
struct perf_sample_data {int dummy; } ;
struct perf_output_handle {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  size; } ;
struct TYPE_3__ {TYPE_2__ header; int /*<<< orphan*/  tid; int /*<<< orphan*/  pid; } ;
struct perf_namespaces_event {TYPE_1__ event_id; int /*<<< orphan*/  task; } ;
struct perf_event {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct perf_event*,struct perf_output_handle*,struct perf_sample_data*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,struct perf_sample_data*,struct perf_event*) ; 
 int /*<<< orphan*/  FUNC2 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC3 (struct perf_event*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct perf_event*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct perf_output_handle*,struct perf_event*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct perf_output_handle*) ; 
 int /*<<< orphan*/  FUNC7 (struct perf_output_handle*,TYPE_1__) ; 

__attribute__((used)) static void FUNC8(struct perf_event *event,
					 void *data)
{
	struct perf_namespaces_event *namespaces_event = data;
	struct perf_output_handle handle;
	struct perf_sample_data sample;
	u16 header_size = namespaces_event->event_id.header.size;
	int ret;

	if (!FUNC2(event))
		return;

	FUNC1(&namespaces_event->event_id.header,
				   &sample, event);
	ret = FUNC5(&handle, event,
				namespaces_event->event_id.header.size);
	if (ret)
		goto out;

	namespaces_event->event_id.pid = FUNC3(event,
							namespaces_event->task);
	namespaces_event->event_id.tid = FUNC4(event,
							namespaces_event->task);

	FUNC7(&handle, namespaces_event->event_id);

	FUNC0(event, &handle, &sample);

	FUNC6(&handle);
out:
	namespaces_event->event_id.header.size = header_size;
}