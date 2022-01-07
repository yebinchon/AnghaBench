
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cpus_ptr; } ;


 int HZ ;
 int TASK_INTERRUPTIBLE ;
 TYPE_1__* current ;
 int * random_strings ;
 int schedule_timeout (int ) ;
 int set_current_state (int ) ;
 int trace_foo_bar (char*,int,int*,int ,int ) ;
 int trace_foo_bar_with_cond (char*,int) ;
 int trace_foo_with_template_cond (char*,int) ;
 int trace_foo_with_template_print (char*,int) ;
 int trace_foo_with_template_simple (char*,int) ;

__attribute__((used)) static void simple_thread_func(int cnt)
{
 int array[6];
 int len = cnt % 5;
 int i;

 set_current_state(TASK_INTERRUPTIBLE);
 schedule_timeout(HZ);

 for (i = 0; i < len; i++)
  array[i] = i + 1;
 array[i] = 0;


 trace_foo_bar("hello", cnt, array, random_strings[len],
        current->cpus_ptr);

 trace_foo_with_template_simple("HELLO", cnt);

 trace_foo_bar_with_cond("Some times print", cnt);

 trace_foo_with_template_cond("prints other times", cnt);

 trace_foo_with_template_print("I have to be different", cnt);
}
