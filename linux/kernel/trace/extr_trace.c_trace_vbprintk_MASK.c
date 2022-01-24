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
typedef  int /*<<< orphan*/  va_list ;
typedef  int /*<<< orphan*/  u32 ;
struct trace_event_call {int dummy; } ;
struct TYPE_2__ {struct ring_buffer* buffer; } ;
struct trace_array {TYPE_1__ trace_buffer; } ;
struct ring_buffer_event {int dummy; } ;
struct ring_buffer {int dummy; } ;
struct bprint_entry {unsigned long ip; char const* fmt; int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  TRACE_BPRINT ; 
 int TRACE_BUF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct ring_buffer*,struct ring_buffer_event*) ; 
 struct ring_buffer_event* FUNC1 (struct ring_buffer*,int /*<<< orphan*/ ,int,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC2 (struct trace_event_call*,struct bprint_entry*,struct ring_buffer*,struct ring_buffer_event*) ; 
 struct trace_event_call event_bprint ; 
 int /*<<< orphan*/  FUNC3 (struct trace_array*,struct ring_buffer*,unsigned long,int,int,int /*<<< orphan*/ *) ; 
 char* FUNC4 () ; 
 struct trace_array global_trace ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 struct bprint_entry* FUNC12 (struct ring_buffer_event*) ; 
 scalar_t__ tracing_disabled ; 
 scalar_t__ tracing_selftest_running ; 
 scalar_t__ FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int FUNC15 (int /*<<< orphan*/ *,int,char const*,int /*<<< orphan*/ ) ; 

int FUNC16(unsigned long ip, const char *fmt, va_list args)
{
	struct trace_event_call *call = &event_bprint;
	struct ring_buffer_event *event;
	struct ring_buffer *buffer;
	struct trace_array *tr = &global_trace;
	struct bprint_entry *entry;
	unsigned long flags;
	char *tbuffer;
	int len = 0, size, pc;

	if (FUNC13(tracing_selftest_running || tracing_disabled))
		return 0;

	/* Don't pollute graph traces with trace_vprintk internals */
	FUNC7();

	pc = FUNC8();
	FUNC9();

	tbuffer = FUNC4();
	if (!tbuffer) {
		len = 0;
		goto out_nobuffer;
	}

	len = FUNC15((u32 *)tbuffer, TRACE_BUF_SIZE/sizeof(int), fmt, args);

	if (len > TRACE_BUF_SIZE/sizeof(int) || len < 0)
		goto out;

	FUNC5(flags);
	size = sizeof(*entry) + sizeof(u32) * len;
	buffer = tr->trace_buffer.buffer;
	event = FUNC1(buffer, TRACE_BPRINT, size,
					    flags, pc);
	if (!event)
		goto out;
	entry = FUNC12(event);
	entry->ip			= ip;
	entry->fmt			= fmt;

	FUNC6(entry->buf, tbuffer, sizeof(u32) * len);
	if (!FUNC2(call, entry, buffer, event)) {
		FUNC0(buffer, event);
		FUNC3(tr, buffer, flags, 6, pc, NULL);
	}

out:
	FUNC11();

out_nobuffer:
	FUNC10();
	FUNC14();

	return len;
}