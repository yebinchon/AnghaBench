
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_seq {int dummy; } ;


 int trace_seq_printf (struct trace_seq*,char*,unsigned long long) ;

__attribute__((used)) static unsigned long long
process_jiffies_to_msecs(struct trace_seq *s, unsigned long long *args)
{
 unsigned long long jiffies = args[0];

 trace_seq_printf(s, "%lld", jiffies);
 return jiffies;
}
