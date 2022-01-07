
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_array {int dummy; } ;
struct dentry {int dummy; } ;


 int pr_warn (char*,char*) ;
 int snapshot_fops ;
 int snapshot_raw_fops ;
 int snprintf (char*,int,char*,long) ;
 int trace_create_cpu_file (char*,int,struct dentry*,struct trace_array*,long,int *) ;
 struct dentry* tracefs_create_dir (char*,struct dentry*) ;
 int tracing_buffers_fops ;
 struct dentry* tracing_dentry_percpu (struct trace_array*,long) ;
 int tracing_entries_fops ;
 int tracing_fops ;
 int tracing_pipe_fops ;
 int tracing_stats_fops ;

__attribute__((used)) static void
tracing_init_tracefs_percpu(struct trace_array *tr, long cpu)
{
 struct dentry *d_percpu = tracing_dentry_percpu(tr, cpu);
 struct dentry *d_cpu;
 char cpu_dir[30];

 if (!d_percpu)
  return;

 snprintf(cpu_dir, 30, "cpu%ld", cpu);
 d_cpu = tracefs_create_dir(cpu_dir, d_percpu);
 if (!d_cpu) {
  pr_warn("Could not create tracefs '%s' entry\n", cpu_dir);
  return;
 }


 trace_create_cpu_file("trace_pipe", 0444, d_cpu,
    tr, cpu, &tracing_pipe_fops);


 trace_create_cpu_file("trace", 0644, d_cpu,
    tr, cpu, &tracing_fops);

 trace_create_cpu_file("trace_pipe_raw", 0444, d_cpu,
    tr, cpu, &tracing_buffers_fops);

 trace_create_cpu_file("stats", 0444, d_cpu,
    tr, cpu, &tracing_stats_fops);

 trace_create_cpu_file("buffer_size_kb", 0444, d_cpu,
    tr, cpu, &tracing_entries_fops);
}
