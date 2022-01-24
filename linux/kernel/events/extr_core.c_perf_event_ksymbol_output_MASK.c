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
struct TYPE_4__ {int /*<<< orphan*/  size; } ;
struct TYPE_3__ {TYPE_2__ header; } ;
struct perf_ksymbol_event {int /*<<< orphan*/  name_len; int /*<<< orphan*/  name; TYPE_1__ event_id; } ;
struct perf_event {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct perf_output_handle*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct perf_event*,struct perf_output_handle*,struct perf_sample_data*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,struct perf_sample_data*,struct perf_event*) ; 
 int /*<<< orphan*/  FUNC3 (struct perf_event*) ; 
 int FUNC4 (struct perf_output_handle*,struct perf_event*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct perf_output_handle*) ; 
 int /*<<< orphan*/  FUNC6 (struct perf_output_handle*,TYPE_1__) ; 

__attribute__((used)) static void FUNC7(struct perf_event *event, void *data)
{
	struct perf_ksymbol_event *ksymbol_event = data;
	struct perf_output_handle handle;
	struct perf_sample_data sample;
	int ret;

	if (!FUNC3(event))
		return;

	FUNC2(&ksymbol_event->event_id.header,
				   &sample, event);
	ret = FUNC4(&handle, event,
				ksymbol_event->event_id.header.size);
	if (ret)
		return;

	FUNC6(&handle, ksymbol_event->event_id);
	FUNC0(&handle, ksymbol_event->name, ksymbol_event->name_len);
	FUNC1(event, &handle, &sample);

	FUNC5(&handle);
}