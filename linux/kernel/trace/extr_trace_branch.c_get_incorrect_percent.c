
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ftrace_branch_data {int correct; int incorrect; } ;



__attribute__((used)) static inline long get_incorrect_percent(struct ftrace_branch_data *p)
{
 long percent;

 if (p->correct) {
  percent = p->incorrect * 100;
  percent /= p->correct + p->incorrect;
 } else
  percent = p->incorrect ? 100 : -1;

 return percent;
}
