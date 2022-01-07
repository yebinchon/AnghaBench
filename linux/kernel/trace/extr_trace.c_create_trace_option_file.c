
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tracer_opt {int name; } ;
struct tracer_flags {int dummy; } ;
struct trace_option_dentry {int entry; struct trace_array* tr; struct tracer_opt* opt; struct tracer_flags* flags; } ;
struct trace_array {int dummy; } ;
struct dentry {int dummy; } ;


 int trace_create_file (int ,int,struct dentry*,struct trace_option_dentry*,int *) ;
 int trace_options_fops ;
 struct dentry* trace_options_init_dentry (struct trace_array*) ;

__attribute__((used)) static void
create_trace_option_file(struct trace_array *tr,
    struct trace_option_dentry *topt,
    struct tracer_flags *flags,
    struct tracer_opt *opt)
{
 struct dentry *t_options;

 t_options = trace_options_init_dentry(tr);
 if (!t_options)
  return;

 topt->flags = flags;
 topt->opt = opt;
 topt->tr = tr;

 topt->entry = trace_create_file(opt->name, 0644, t_options, topt,
        &trace_options_fops);

}
