
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_seq {int dummy; } ;


 int trace_seq_bitmask (struct trace_seq*,void*,unsigned int) ;
 char* trace_seq_buffer_ptr (struct trace_seq*) ;
 int trace_seq_putc (struct trace_seq*,int ) ;

const char *
trace_print_bitmask_seq(struct trace_seq *p, void *bitmask_ptr,
   unsigned int bitmask_size)
{
 const char *ret = trace_seq_buffer_ptr(p);

 trace_seq_bitmask(p, bitmask_ptr, bitmask_size * 8);
 trace_seq_putc(p, 0);

 return ret;
}
