
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_seq {int dummy; } ;
typedef int states ;


 int trace_seq_putc (struct trace_seq*,char const) ;

__attribute__((used)) static void write_state(struct trace_seq *s, int val)
{
 const char states[] = "SDTtZXxW";
 int found = 0;
 int i;

 for (i = 0; i < (sizeof(states) - 1); i++) {
  if (!(val & (1 << i)))
   continue;

  if (found)
   trace_seq_putc(s, '|');

  found = 1;
  trace_seq_putc(s, states[i]);
 }

 if (!found)
  trace_seq_putc(s, 'R');
}
