
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_event_file {int flags; int tm_ref; } ;


 int EVENT_FILE_FL_TRIGGER_MODE_BIT ;
 scalar_t__ atomic_dec_return (int *) ;
 int atomic_inc_return (int *) ;
 int clear_bit (int ,int *) ;
 int set_bit (int ,int *) ;
 int trace_event_enable_disable (struct trace_event_file*,int,int) ;

int trace_event_trigger_enable_disable(struct trace_event_file *file,
           int trigger_enable)
{
 int ret = 0;

 if (trigger_enable) {
  if (atomic_inc_return(&file->tm_ref) > 1)
   return ret;
  set_bit(EVENT_FILE_FL_TRIGGER_MODE_BIT, &file->flags);
  ret = trace_event_enable_disable(file, 1, 1);
 } else {
  if (atomic_dec_return(&file->tm_ref) > 0)
   return ret;
  clear_bit(EVENT_FILE_FL_TRIGGER_MODE_BIT, &file->flags);
  ret = trace_event_enable_disable(file, 0, 1);
 }

 return ret;
}
