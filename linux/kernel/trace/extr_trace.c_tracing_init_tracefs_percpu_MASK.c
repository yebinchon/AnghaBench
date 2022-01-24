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
struct trace_array {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  snapshot_fops ; 
 int /*<<< orphan*/  snapshot_raw_fops ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,long) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,struct dentry*,struct trace_array*,long,int /*<<< orphan*/ *) ; 
 struct dentry* FUNC3 (char*,struct dentry*) ; 
 int /*<<< orphan*/  tracing_buffers_fops ; 
 struct dentry* FUNC4 (struct trace_array*,long) ; 
 int /*<<< orphan*/  tracing_entries_fops ; 
 int /*<<< orphan*/  tracing_fops ; 
 int /*<<< orphan*/  tracing_pipe_fops ; 
 int /*<<< orphan*/  tracing_stats_fops ; 

__attribute__((used)) static void
FUNC5(struct trace_array *tr, long cpu)
{
	struct dentry *d_percpu = FUNC4(tr, cpu);
	struct dentry *d_cpu;
	char cpu_dir[30]; /* 30 characters should be more than enough */

	if (!d_percpu)
		return;

	FUNC1(cpu_dir, 30, "cpu%ld", cpu);
	d_cpu = FUNC3(cpu_dir, d_percpu);
	if (!d_cpu) {
		FUNC0("Could not create tracefs '%s' entry\n", cpu_dir);
		return;
	}

	/* per cpu trace_pipe */
	FUNC2("trace_pipe", 0444, d_cpu,
				tr, cpu, &tracing_pipe_fops);

	/* per cpu trace */
	FUNC2("trace", 0644, d_cpu,
				tr, cpu, &tracing_fops);

	FUNC2("trace_pipe_raw", 0444, d_cpu,
				tr, cpu, &tracing_buffers_fops);

	FUNC2("stats", 0444, d_cpu,
				tr, cpu, &tracing_stats_fops);

	FUNC2("buffer_size_kb", 0444, d_cpu,
				tr, cpu, &tracing_entries_fops);

#ifdef CONFIG_TRACER_SNAPSHOT
	trace_create_cpu_file("snapshot", 0644, d_cpu,
				tr, cpu, &snapshot_fops);

	trace_create_cpu_file("snapshot_raw", 0444, d_cpu,
				tr, cpu, &snapshot_raw_fops);
#endif
}