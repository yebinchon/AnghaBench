
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONSOLE_REPLAY_ALL ;
 int DUMP_ALL ;
 int PANIC_PRINT_ALL_PRINTK_MSG ;
 int PANIC_PRINT_FTRACE_INFO ;
 int PANIC_PRINT_LOCK_INFO ;
 int PANIC_PRINT_MEM_INFO ;
 int PANIC_PRINT_TASK_INFO ;
 int PANIC_PRINT_TIMER_INFO ;
 int console_flush_on_panic (int ) ;
 int debug_show_all_locks () ;
 int ftrace_dump (int ) ;
 int panic_print ;
 int show_mem (int ,int *) ;
 int show_state () ;
 int sysrq_timer_list_show () ;

__attribute__((used)) static void panic_print_sys_info(void)
{
 if (panic_print & PANIC_PRINT_ALL_PRINTK_MSG)
  console_flush_on_panic(CONSOLE_REPLAY_ALL);

 if (panic_print & PANIC_PRINT_TASK_INFO)
  show_state();

 if (panic_print & PANIC_PRINT_MEM_INFO)
  show_mem(0, ((void*)0));

 if (panic_print & PANIC_PRINT_TIMER_INFO)
  sysrq_timer_list_show();

 if (panic_print & PANIC_PRINT_LOCK_INFO)
  debug_show_all_locks();

 if (panic_print & PANIC_PRINT_FTRACE_INFO)
  ftrace_dump(DUMP_ALL);
}
