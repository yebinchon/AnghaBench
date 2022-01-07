
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 char kdb_task_state_char (struct task_struct const*) ;
 unsigned long kdb_task_state_string (char*) ;

unsigned long kdb_task_state(const struct task_struct *p, unsigned long mask)
{
 char state[] = { kdb_task_state_char(p), '\0' };
 return (mask & kdb_task_state_string(state)) != 0;
}
