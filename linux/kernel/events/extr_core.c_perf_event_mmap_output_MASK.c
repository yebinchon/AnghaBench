#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct perf_sample_data {int dummy; } ;
struct perf_output_handle {int dummy; } ;
struct TYPE_6__ {int size; int /*<<< orphan*/  type; } ;
struct TYPE_5__ {TYPE_3__ header; int /*<<< orphan*/  tid; int /*<<< orphan*/  pid; } ;
struct perf_mmap_event {TYPE_2__ event_id; int /*<<< orphan*/  file_size; int /*<<< orphan*/  file_name; TYPE_2__ flags; TYPE_2__ prot; TYPE_2__ ino_generation; TYPE_2__ ino; TYPE_2__ min; TYPE_2__ maj; } ;
struct TYPE_4__ {scalar_t__ mmap2; } ;
struct perf_event {TYPE_1__ attr; } ;

/* Variables and functions */
 int /*<<< orphan*/  PERF_RECORD_MMAP2 ; 
 int /*<<< orphan*/  FUNC0 (struct perf_output_handle*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 (struct perf_event*,struct perf_output_handle*,struct perf_sample_data*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,struct perf_sample_data*,struct perf_event*) ; 
 int /*<<< orphan*/  FUNC3 (struct perf_event*,void*) ; 
 int /*<<< orphan*/  FUNC4 (struct perf_event*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct perf_event*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct perf_output_handle*,struct perf_event*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct perf_output_handle*) ; 
 int /*<<< orphan*/  FUNC8 (struct perf_output_handle*,TYPE_2__) ; 

__attribute__((used)) static void FUNC9(struct perf_event *event,
				   void *data)
{
	struct perf_mmap_event *mmap_event = data;
	struct perf_output_handle handle;
	struct perf_sample_data sample;
	int size = mmap_event->event_id.header.size;
	u32 type = mmap_event->event_id.header.type;
	int ret;

	if (!FUNC3(event, data))
		return;

	if (event->attr.mmap2) {
		mmap_event->event_id.header.type = PERF_RECORD_MMAP2;
		mmap_event->event_id.header.size += sizeof(mmap_event->maj);
		mmap_event->event_id.header.size += sizeof(mmap_event->min);
		mmap_event->event_id.header.size += sizeof(mmap_event->ino);
		mmap_event->event_id.header.size += sizeof(mmap_event->ino_generation);
		mmap_event->event_id.header.size += sizeof(mmap_event->prot);
		mmap_event->event_id.header.size += sizeof(mmap_event->flags);
	}

	FUNC2(&mmap_event->event_id.header, &sample, event);
	ret = FUNC6(&handle, event,
				mmap_event->event_id.header.size);
	if (ret)
		goto out;

	mmap_event->event_id.pid = FUNC4(event, current);
	mmap_event->event_id.tid = FUNC5(event, current);

	FUNC8(&handle, mmap_event->event_id);

	if (event->attr.mmap2) {
		FUNC8(&handle, mmap_event->maj);
		FUNC8(&handle, mmap_event->min);
		FUNC8(&handle, mmap_event->ino);
		FUNC8(&handle, mmap_event->ino_generation);
		FUNC8(&handle, mmap_event->prot);
		FUNC8(&handle, mmap_event->flags);
	}

	FUNC0(&handle, mmap_event->file_name,
				   mmap_event->file_size);

	FUNC1(event, &handle, &sample);

	FUNC7(&handle);
out:
	mmap_event->event_id.header.size = size;
	mmap_event->event_id.header.type = type;
}