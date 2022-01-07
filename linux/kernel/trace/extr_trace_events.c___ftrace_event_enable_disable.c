
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trace_event_file {unsigned long flags; int sm_ref; struct trace_array* tr; struct trace_event_call* event_call; } ;
struct trace_event_call {TYPE_1__* class; } ;
struct trace_array {int trace_flags; } ;
struct TYPE_2__ {int (* reg ) (struct trace_event_call*,int ,struct trace_event_file*) ;} ;


 int EVENT_FILE_FL_ENABLED ;
 int EVENT_FILE_FL_ENABLED_BIT ;
 int EVENT_FILE_FL_RECORDED_CMD ;
 int EVENT_FILE_FL_RECORDED_CMD_BIT ;
 int EVENT_FILE_FL_RECORDED_TGID ;
 int EVENT_FILE_FL_RECORDED_TGID_BIT ;
 unsigned long EVENT_FILE_FL_SOFT_DISABLED ;
 int EVENT_FILE_FL_SOFT_DISABLED_BIT ;
 int EVENT_FILE_FL_SOFT_MODE ;
 int EVENT_FILE_FL_SOFT_MODE_BIT ;
 int EVENT_FILE_FL_WAS_ENABLED_BIT ;
 int TRACE_ITER_RECORD_CMD ;
 int TRACE_ITER_RECORD_TGID ;
 int TRACE_REG_REGISTER ;
 int TRACE_REG_UNREGISTER ;
 int atomic_dec_return (int *) ;
 int atomic_inc_return (int *) ;
 int clear_bit (int ,unsigned long*) ;
 int pr_info (char*,int ) ;
 int set_bit (int ,int*) ;
 int stub1 (struct trace_event_call*,int ,struct trace_event_file*) ;
 int stub2 (struct trace_event_call*,int ,struct trace_event_file*) ;
 int trace_buffered_event_disable () ;
 int trace_buffered_event_enable () ;
 int trace_event_name (struct trace_event_call*) ;
 int tracing_start_cmdline_record () ;
 int tracing_start_tgid_record () ;
 int tracing_stop_cmdline_record () ;
 int tracing_stop_tgid_record () ;

__attribute__((used)) static int __ftrace_event_enable_disable(struct trace_event_file *file,
      int enable, int soft_disable)
{
 struct trace_event_call *call = file->event_call;
 struct trace_array *tr = file->tr;
 unsigned long file_flags = file->flags;
 int ret = 0;
 int disable;

 switch (enable) {
 case 0:
  if (soft_disable) {
   if (atomic_dec_return(&file->sm_ref) > 0)
    break;
   disable = file->flags & EVENT_FILE_FL_SOFT_DISABLED;
   clear_bit(EVENT_FILE_FL_SOFT_MODE_BIT, &file->flags);
  } else
   disable = !(file->flags & EVENT_FILE_FL_SOFT_MODE);

  if (disable && (file->flags & EVENT_FILE_FL_ENABLED)) {
   clear_bit(EVENT_FILE_FL_ENABLED_BIT, &file->flags);
   if (file->flags & EVENT_FILE_FL_RECORDED_CMD) {
    tracing_stop_cmdline_record();
    clear_bit(EVENT_FILE_FL_RECORDED_CMD_BIT, &file->flags);
   }

   if (file->flags & EVENT_FILE_FL_RECORDED_TGID) {
    tracing_stop_tgid_record();
    clear_bit(EVENT_FILE_FL_RECORDED_TGID_BIT, &file->flags);
   }

   call->class->reg(call, TRACE_REG_UNREGISTER, file);
  }

  if (file->flags & EVENT_FILE_FL_SOFT_MODE)
   set_bit(EVENT_FILE_FL_SOFT_DISABLED_BIT, &file->flags);
  else
   clear_bit(EVENT_FILE_FL_SOFT_DISABLED_BIT, &file->flags);
  break;
 case 1:
  if (!soft_disable)
   clear_bit(EVENT_FILE_FL_SOFT_DISABLED_BIT, &file->flags);
  else {
   if (atomic_inc_return(&file->sm_ref) > 1)
    break;
   set_bit(EVENT_FILE_FL_SOFT_MODE_BIT, &file->flags);
  }

  if (!(file->flags & EVENT_FILE_FL_ENABLED)) {
   bool cmd = 0, tgid = 0;


   if (soft_disable)
    set_bit(EVENT_FILE_FL_SOFT_DISABLED_BIT, &file->flags);

   if (tr->trace_flags & TRACE_ITER_RECORD_CMD) {
    cmd = 1;
    tracing_start_cmdline_record();
    set_bit(EVENT_FILE_FL_RECORDED_CMD_BIT, &file->flags);
   }

   if (tr->trace_flags & TRACE_ITER_RECORD_TGID) {
    tgid = 1;
    tracing_start_tgid_record();
    set_bit(EVENT_FILE_FL_RECORDED_TGID_BIT, &file->flags);
   }

   ret = call->class->reg(call, TRACE_REG_REGISTER, file);
   if (ret) {
    if (cmd)
     tracing_stop_cmdline_record();
    if (tgid)
     tracing_stop_tgid_record();
    pr_info("event trace: Could not enable event "
     "%s\n", trace_event_name(call));
    break;
   }
   set_bit(EVENT_FILE_FL_ENABLED_BIT, &file->flags);


   set_bit(EVENT_FILE_FL_WAS_ENABLED_BIT, &file->flags);
  }
  break;
 }


 if ((file_flags & EVENT_FILE_FL_SOFT_DISABLED) !=
     (file->flags & EVENT_FILE_FL_SOFT_DISABLED)) {
  if (file->flags & EVENT_FILE_FL_SOFT_DISABLED)
   trace_buffered_event_enable();
  else
   trace_buffered_event_disable();
 }

 return ret;
}
