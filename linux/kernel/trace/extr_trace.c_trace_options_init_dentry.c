
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_array {struct dentry* options; } ;
struct dentry {int dummy; } ;


 scalar_t__ IS_ERR (struct dentry*) ;
 int pr_warn (char*) ;
 struct dentry* tracefs_create_dir (char*,struct dentry*) ;
 struct dentry* tracing_get_dentry (struct trace_array*) ;

__attribute__((used)) static struct dentry *trace_options_init_dentry(struct trace_array *tr)
{
 struct dentry *d_tracer;

 if (tr->options)
  return tr->options;

 d_tracer = tracing_get_dentry(tr);
 if (IS_ERR(d_tracer))
  return ((void*)0);

 tr->options = tracefs_create_dir("options", d_tracer);
 if (!tr->options) {
  pr_warn("Could not create tracefs directory 'options'\n");
  return ((void*)0);
 }

 return tr->options;
}
