
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int incorrect; int correct; } ;
struct ftrace_likely_data {TYPE_1__ data; int constant; } ;


 int trace_likely_condition (struct ftrace_likely_data*,int,int) ;
 int user_access_restore (unsigned long) ;
 unsigned long user_access_save () ;

void ftrace_likely_update(struct ftrace_likely_data *f, int val,
     int expect, int is_constant)
{
 unsigned long flags = user_access_save();


 if (is_constant) {
  f->constant++;
  val = expect;
 }






 trace_likely_condition(f, val, expect);


 if (val == expect)
  f->data.correct++;
 else
  f->data.incorrect++;

 user_access_restore(flags);
}
