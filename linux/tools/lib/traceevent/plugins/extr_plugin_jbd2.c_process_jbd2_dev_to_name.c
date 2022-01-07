
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_seq {int dummy; } ;


 int MAJOR (unsigned int) ;
 int MINOR (unsigned int) ;
 int trace_seq_printf (struct trace_seq*,char*,int ,int ) ;

__attribute__((used)) static unsigned long long
process_jbd2_dev_to_name(struct trace_seq *s, unsigned long long *args)
{
 unsigned int dev = args[0];

 trace_seq_printf(s, "%d:%d", MAJOR(dev), MINOR(dev));
 return 0;
}
