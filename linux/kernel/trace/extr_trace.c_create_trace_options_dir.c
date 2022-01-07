
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_array {int dummy; } ;
struct dentry {int dummy; } ;


 int TOP_LEVEL_TRACE_FLAGS ;
 int create_trace_option_core_file (struct trace_array*,scalar_t__,int) ;
 struct trace_array global_trace ;
 scalar_t__* trace_options ;
 struct dentry* trace_options_init_dentry (struct trace_array*) ;

__attribute__((used)) static void create_trace_options_dir(struct trace_array *tr)
{
 struct dentry *t_options;
 bool top_level = tr == &global_trace;
 int i;

 t_options = trace_options_init_dentry(tr);
 if (!t_options)
  return;

 for (i = 0; trace_options[i]; i++) {
  if (top_level ||
      !((1 << i) & TOP_LEVEL_TRACE_FLAGS))
   create_trace_option_core_file(tr, trace_options[i], i);
 }
}
