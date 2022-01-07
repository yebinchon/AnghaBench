
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;



 int NOTIFY_OK ;
 int ftrace_dump (int ) ;
 int ftrace_dump_on_oops ;

__attribute__((used)) static int trace_die_handler(struct notifier_block *self,
        unsigned long val,
        void *data)
{
 switch (val) {
 case 128:
  if (ftrace_dump_on_oops)
   ftrace_dump(ftrace_dump_on_oops);
  break;
 default:
  break;
 }
 return NOTIFY_OK;
}
