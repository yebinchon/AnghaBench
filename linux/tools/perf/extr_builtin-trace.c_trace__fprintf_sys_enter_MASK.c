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
struct trace {int /*<<< orphan*/  output; int /*<<< orphan*/  raw_augmented_syscalls_args_size; int /*<<< orphan*/  host; } ;
struct thread_trace {int dummy; } ;
struct thread {int dummy; } ;
struct syscall {int dummy; } ;
struct perf_sample {int /*<<< orphan*/  tid; int /*<<< orphan*/  pid; } ;
struct evsel {int dummy; } ;
typedef  int /*<<< orphan*/  msg ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int id ; 
 struct thread* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC2 (struct evsel*,void*,struct perf_sample*) ; 
 int FUNC3 (struct evsel*,int /*<<< orphan*/ ,struct perf_sample*) ; 
 void* FUNC4 (struct syscall*,struct perf_sample*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct syscall*,char*,int,void*,void*,int,struct trace*,struct thread*) ; 
 int /*<<< orphan*/  FUNC6 (struct thread*) ; 
 struct thread_trace* FUNC7 (struct thread*,int /*<<< orphan*/ ) ; 
 struct syscall* FUNC8 (struct trace*,struct evsel*,int) ; 

__attribute__((used)) static int FUNC9(struct trace *trace, struct evsel *evsel,
				    struct perf_sample *sample)
{
	struct thread_trace *ttrace;
	struct thread *thread;
	int id = FUNC3(evsel, id, sample), err = -1;
	struct syscall *sc = FUNC8(trace, evsel, id);
	char msg[1024];
	void *args, *augmented_args = NULL;
	int augmented_args_size;

	if (sc == NULL)
		return -1;

	thread = FUNC1(trace->host, sample->pid, sample->tid);
	ttrace = FUNC7(thread, trace->output);
	/*
	 * We need to get ttrace just to make sure it is there when syscall__scnprintf_args()
	 * and the rest of the beautifiers accessing it via struct syscall_arg touches it.
	 */
	if (ttrace == NULL)
		goto out_put;

	args = FUNC2(evsel, args, sample);
	augmented_args = FUNC4(sc, sample, &augmented_args_size, trace->raw_augmented_syscalls_args_size);
	FUNC5(sc, msg, sizeof(msg), args, augmented_args, augmented_args_size, trace, thread);
	FUNC0(trace->output, "%s", msg);
	err = 0;
out_put:
	FUNC6(thread);
	return err;
}