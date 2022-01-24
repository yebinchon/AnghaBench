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
struct uprobe_trace_entry_head {unsigned long* vaddr; } ;
struct uprobe_cpu_buffer {int /*<<< orphan*/  buf; } ;
struct TYPE_4__ {int size; } ;
struct trace_uprobe {TYPE_2__ tp; } ;
struct trace_event_file {struct trace_event_call* event_call; } ;
struct TYPE_3__ {int /*<<< orphan*/  type; } ;
struct trace_event_call {TYPE_1__ event; } ;
struct ring_buffer_event {int dummy; } ;
struct ring_buffer {int dummy; } ;
struct pt_regs {int dummy; } ;

/* Variables and functions */
 void* FUNC0 (struct uprobe_trace_entry_head*,int) ; 
 int PAGE_SIZE ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct trace_event_file*,struct ring_buffer*,struct ring_buffer_event*,struct uprobe_trace_entry_head*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC5 (struct pt_regs*) ; 
 scalar_t__ FUNC6 (struct trace_uprobe*) ; 
 int /*<<< orphan*/  FUNC7 (void*,int /*<<< orphan*/ ,int) ; 
 struct uprobe_trace_entry_head* FUNC8 (struct ring_buffer_event*) ; 
 struct ring_buffer_event* FUNC9 (struct ring_buffer**,struct trace_event_file*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct trace_event_call* FUNC10 (TYPE_2__*) ; 
 scalar_t__ FUNC11 (struct trace_event_file*) ; 

__attribute__((used)) static void FUNC12(struct trace_uprobe *tu,
				unsigned long func, struct pt_regs *regs,
				struct uprobe_cpu_buffer *ucb, int dsize,
				struct trace_event_file *trace_file)
{
	struct uprobe_trace_entry_head *entry;
	struct ring_buffer_event *event;
	struct ring_buffer *buffer;
	void *data;
	int size, esize;
	struct trace_event_call *call = FUNC10(&tu->tp);

	FUNC2(call != trace_file->event_call);

	if (FUNC3(tu->tp.size + dsize > PAGE_SIZE))
		return;

	if (FUNC11(trace_file))
		return;

	esize = FUNC1(FUNC6(tu));
	size = esize + tu->tp.size + dsize;
	event = FUNC9(&buffer, trace_file,
						call->event.type, size, 0, 0);
	if (!event)
		return;

	entry = FUNC8(event);
	if (FUNC6(tu)) {
		entry->vaddr[0] = func;
		entry->vaddr[1] = FUNC5(regs);
		data = FUNC0(entry, true);
	} else {
		entry->vaddr[0] = FUNC5(regs);
		data = FUNC0(entry, false);
	}

	FUNC7(data, ucb->buf, tu->tp.size + dsize);

	FUNC4(trace_file, buffer, event, entry, 0, 0);
}