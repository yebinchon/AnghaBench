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
typedef  scalar_t__ u64 ;
typedef  int u32 ;
typedef  scalar_t__ u16 ;
struct thread_stack {scalar_t__ trace_nr; scalar_t__ crp; } ;
struct thread {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int PERF_IP_FLAG_CALL ; 
 int PERF_IP_FLAG_RETURN ; 
 int PERF_IP_FLAG_TRACE_BEGIN ; 
 int PERF_IP_FLAG_TRACE_END ; 
 int /*<<< orphan*/  FUNC0 (struct thread*,struct thread_stack*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct thread_stack* FUNC2 (struct thread*,int) ; 
 struct thread_stack* FUNC3 (struct thread*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct thread_stack*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct thread_stack*) ; 
 int FUNC6 (struct thread_stack*,scalar_t__,int) ; 

int FUNC7(struct thread *thread, int cpu, u32 flags, u64 from_ip,
			u64 to_ip, u16 insn_len, u64 trace_nr)
{
	struct thread_stack *ts = FUNC2(thread, cpu);

	if (!thread)
		return -EINVAL;

	if (!ts) {
		ts = FUNC3(thread, cpu, NULL);
		if (!ts) {
			FUNC1("Out of memory: no thread stack\n");
			return -ENOMEM;
		}
		ts->trace_nr = trace_nr;
	}

	/*
	 * When the trace is discontinuous, the trace_nr changes.  In that case
	 * the stack might be completely invalid.  Better to report nothing than
	 * to report something misleading, so flush the stack.
	 */
	if (trace_nr != ts->trace_nr) {
		if (ts->trace_nr)
			FUNC0(thread, ts);
		ts->trace_nr = trace_nr;
	}

	/* Stop here if thread_stack__process() is in use */
	if (ts->crp)
		return 0;

	if (flags & PERF_IP_FLAG_CALL) {
		u64 ret_addr;

		if (!to_ip)
			return 0;
		ret_addr = from_ip + insn_len;
		if (ret_addr == to_ip)
			return 0; /* Zero-length calls are excluded */
		return FUNC6(ts, ret_addr,
					  flags & PERF_IP_FLAG_TRACE_END);
	} else if (flags & PERF_IP_FLAG_TRACE_BEGIN) {
		/*
		 * If the caller did not change the trace number (which would
		 * have flushed the stack) then try to make sense of the stack.
		 * Possibly, tracing began after returning to the current
		 * address, so try to pop that. Also, do not expect a call made
		 * when the trace ended, to return, so pop that.
		 */
		FUNC4(ts, to_ip);
		FUNC5(ts);
	} else if ((flags & PERF_IP_FLAG_RETURN) && from_ip) {
		FUNC4(ts, to_ip);
	}

	return 0;
}