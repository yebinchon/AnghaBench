#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u64 ;
struct perf_sample_data {int type; int /*<<< orphan*/  id; int /*<<< orphan*/  cpu_entry; int /*<<< orphan*/  stream_id; int /*<<< orphan*/  time; int /*<<< orphan*/  tid_entry; } ;
struct perf_output_handle {int dummy; } ;

/* Variables and functions */
 int PERF_SAMPLE_CPU ; 
 int PERF_SAMPLE_ID ; 
 int PERF_SAMPLE_IDENTIFIER ; 
 int PERF_SAMPLE_STREAM_ID ; 
 int PERF_SAMPLE_TID ; 
 int PERF_SAMPLE_TIME ; 
 int /*<<< orphan*/  FUNC0 (struct perf_output_handle*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct perf_output_handle *handle,
					   struct perf_sample_data *data)
{
	u64 sample_type = data->type;

	if (sample_type & PERF_SAMPLE_TID)
		FUNC0(handle, data->tid_entry);

	if (sample_type & PERF_SAMPLE_TIME)
		FUNC0(handle, data->time);

	if (sample_type & PERF_SAMPLE_ID)
		FUNC0(handle, data->id);

	if (sample_type & PERF_SAMPLE_STREAM_ID)
		FUNC0(handle, data->stream_id);

	if (sample_type & PERF_SAMPLE_CPU)
		FUNC0(handle, data->cpu_entry);

	if (sample_type & PERF_SAMPLE_IDENTIFIER)
		FUNC0(handle, data->id);
}