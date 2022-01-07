
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 scalar_t__ ARRAY_SIZE (char const**) ;
 int BUILD_BUG_ON (int) ;
 int TASK_REPORT_MAX ;
 scalar_t__ ilog2 (int ) ;
 char const** task_state_array ;
 size_t task_state_index (struct task_struct*) ;

__attribute__((used)) static inline const char *get_task_state(struct task_struct *tsk)
{
 BUILD_BUG_ON(1 + ilog2(TASK_REPORT_MAX) != ARRAY_SIZE(task_state_array));
 return task_state_array[task_state_index(tsk)];
}
