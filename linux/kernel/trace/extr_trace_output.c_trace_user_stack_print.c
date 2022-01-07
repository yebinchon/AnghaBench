
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct userstack_entry {unsigned long* caller; int tgid; } ;
struct trace_seq {int dummy; } ;
struct trace_iterator {int ent; struct trace_seq seq; struct trace_array* tr; } ;
struct trace_event {int dummy; } ;
struct trace_array {int trace_flags; } ;
struct task_struct {int dummy; } ;
struct mm_struct {int dummy; } ;
typedef enum print_line_t { ____Placeholder_print_line_t } print_line_t ;


 unsigned int FTRACE_STACK_ENTRIES ;
 int TRACE_ITER_SYM_USEROBJ ;
 struct task_struct* find_task_by_vpid (int ) ;
 struct mm_struct* get_task_mm (struct task_struct*) ;
 int mmput (struct mm_struct*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int seq_print_user_ip (struct trace_seq*,struct mm_struct*,unsigned long,int) ;
 int trace_assign_type (struct userstack_entry*,int ) ;
 int trace_handle_return (struct trace_seq*) ;
 scalar_t__ trace_seq_has_overflowed (struct trace_seq*) ;
 int trace_seq_putc (struct trace_seq*,char) ;
 int trace_seq_puts (struct trace_seq*,char*) ;

__attribute__((used)) static enum print_line_t trace_user_stack_print(struct trace_iterator *iter,
      int flags, struct trace_event *event)
{
 struct trace_array *tr = iter->tr;
 struct userstack_entry *field;
 struct trace_seq *s = &iter->seq;
 struct mm_struct *mm = ((void*)0);
 unsigned int i;

 trace_assign_type(field, iter->ent);

 trace_seq_puts(s, "<user stack trace>\n");

 if (tr->trace_flags & TRACE_ITER_SYM_USEROBJ) {
  struct task_struct *task;




  rcu_read_lock();
  task = find_task_by_vpid(field->tgid);
  if (task)
   mm = get_task_mm(task);
  rcu_read_unlock();
 }

 for (i = 0; i < FTRACE_STACK_ENTRIES; i++) {
  unsigned long ip = field->caller[i];

  if (!ip || trace_seq_has_overflowed(s))
   break;

  trace_seq_puts(s, " => ");
  seq_print_user_ip(s, mm, ip, flags);
  trace_seq_putc(s, '\n');
 }

 if (mm)
  mmput(mm);

 return trace_handle_return(s);
}
