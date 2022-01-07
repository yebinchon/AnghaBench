
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_event_file {int dummy; } ;
struct hist_trigger_data {int dummy; } ;


 int EINVAL ;
 unsigned int TRACING_MAP_VALS_MAX ;
 scalar_t__ WARN_ON (int) ;
 int __create_val_field (struct hist_trigger_data*,unsigned int,struct trace_event_file*,int *,char*,int ) ;

__attribute__((used)) static int create_val_field(struct hist_trigger_data *hist_data,
       unsigned int val_idx,
       struct trace_event_file *file,
       char *field_str)
{
 if (WARN_ON(val_idx >= TRACING_MAP_VALS_MAX))
  return -EINVAL;

 return __create_val_field(hist_data, val_idx, file, ((void*)0), field_str, 0);
}
