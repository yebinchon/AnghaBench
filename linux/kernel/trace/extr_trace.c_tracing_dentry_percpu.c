
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_array {struct dentry* percpu_dir; } ;
struct dentry {int dummy; } ;


 scalar_t__ IS_ERR (struct dentry*) ;
 int WARN_ONCE (int,char*,int) ;
 struct dentry* tracefs_create_dir (char*,struct dentry*) ;
 struct dentry* tracing_get_dentry (struct trace_array*) ;

__attribute__((used)) static struct dentry *tracing_dentry_percpu(struct trace_array *tr, int cpu)
{
 struct dentry *d_tracer;

 if (tr->percpu_dir)
  return tr->percpu_dir;

 d_tracer = tracing_get_dentry(tr);
 if (IS_ERR(d_tracer))
  return ((void*)0);

 tr->percpu_dir = tracefs_create_dir("per_cpu", d_tracer);

 WARN_ONCE(!tr->percpu_dir,
    "Could not create tracefs directory 'per_cpu/%d'\n", cpu);

 return tr->percpu_dir;
}
