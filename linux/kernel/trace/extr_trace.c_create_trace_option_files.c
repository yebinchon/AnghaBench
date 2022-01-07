
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tracer_opt {scalar_t__ name; } ;
struct tracer_flags {struct tracer_opt* opts; } ;
struct tracer {struct tracer_flags* flags; } ;
struct trace_options {struct trace_option_dentry* topts; struct tracer* tracer; } ;
struct trace_option_dentry {int * entry; } ;
struct trace_array {int nr_topts; struct trace_options* topts; } ;


 int GFP_KERNEL ;
 int WARN_ONCE (int ,char*,scalar_t__) ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int create_trace_option_file (struct trace_array*,struct trace_option_dentry*,struct tracer_flags*,struct tracer_opt*) ;
 struct trace_option_dentry* kcalloc (int,int,int ) ;
 int kfree (struct trace_option_dentry*) ;
 struct trace_options* krealloc (struct trace_options*,int,int ) ;
 int trace_ok_for_array (struct tracer*,struct trace_array*) ;

__attribute__((used)) static void
create_trace_option_files(struct trace_array *tr, struct tracer *tracer)
{
 struct trace_option_dentry *topts;
 struct trace_options *tr_topts;
 struct tracer_flags *flags;
 struct tracer_opt *opts;
 int cnt;
 int i;

 if (!tracer)
  return;

 flags = tracer->flags;

 if (!flags || !flags->opts)
  return;





 if (!trace_ok_for_array(tracer, tr))
  return;

 for (i = 0; i < tr->nr_topts; i++) {

  if (WARN_ON_ONCE(tr->topts[i].tracer->flags == tracer->flags))
   return;
 }

 opts = flags->opts;

 for (cnt = 0; opts[cnt].name; cnt++)
  ;

 topts = kcalloc(cnt + 1, sizeof(*topts), GFP_KERNEL);
 if (!topts)
  return;

 tr_topts = krealloc(tr->topts, sizeof(*tr->topts) * (tr->nr_topts + 1),
       GFP_KERNEL);
 if (!tr_topts) {
  kfree(topts);
  return;
 }

 tr->topts = tr_topts;
 tr->topts[tr->nr_topts].tracer = tracer;
 tr->topts[tr->nr_topts].topts = topts;
 tr->nr_topts++;

 for (cnt = 0; opts[cnt].name; cnt++) {
  create_trace_option_file(tr, &topts[cnt], flags,
      &opts[cnt]);
  WARN_ONCE(topts[cnt].entry == ((void*)0),
     "Failed to create trace option: %s",
     opts[cnt].name);
 }
}
