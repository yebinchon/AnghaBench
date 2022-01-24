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
typedef  int /*<<< orphan*/  va_list ;
struct trace_event_call {int dummy; } ;
struct ring_buffer_event {int dummy; } ;
struct ring_buffer {int dummy; } ;
struct print_entry {unsigned long ip; int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  TRACE_BUF_SIZE ; 
 int /*<<< orphan*/  TRACE_PRINT ; 
 int /*<<< orphan*/  FUNC0 (struct ring_buffer*,struct ring_buffer_event*) ; 
 struct ring_buffer_event* FUNC1 (struct ring_buffer*,int /*<<< orphan*/ ,int,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC2 (struct trace_event_call*,struct print_entry*,struct ring_buffer*,struct ring_buffer_event*) ; 
 struct trace_event_call event_print ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct ring_buffer*,unsigned long,int,int,int /*<<< orphan*/ *) ; 
 char* FUNC4 () ; 
 int /*<<< orphan*/  global_trace ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 struct print_entry* FUNC12 (struct ring_buffer_event*) ; 
 scalar_t__ tracing_disabled ; 
 scalar_t__ tracing_selftest_running ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int FUNC14 (char*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC15(struct ring_buffer *buffer,
		      unsigned long ip, const char *fmt, va_list args)
{
	struct trace_event_call *call = &event_print;
	struct ring_buffer_event *event;
	int len = 0, size, pc;
	struct print_entry *entry;
	unsigned long flags;
	char *tbuffer;

	if (tracing_disabled || tracing_selftest_running)
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

	len = FUNC14(tbuffer, TRACE_BUF_SIZE, fmt, args);

	FUNC5(flags);
	size = sizeof(*entry) + len + 1;
	event = FUNC1(buffer, TRACE_PRINT, size,
					    flags, pc);
	if (!event)
		goto out;
	entry = FUNC12(event);
	entry->ip = ip;

	FUNC6(&entry->buf, tbuffer, len + 1);
	if (!FUNC2(call, entry, buffer, event)) {
		FUNC0(buffer, event);
		FUNC3(&global_trace, buffer, flags, 6, pc, NULL);
	}

out:
	FUNC11();

out_nobuffer:
	FUNC10();
	FUNC13();

	return len;
}