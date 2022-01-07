
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct trace_seq {int dummy; } ;


 char* trace_seq_buffer_ptr (struct trace_seq*) ;
 int trace_seq_printf (struct trace_seq*,char*,...) ;
 int trace_seq_putc (struct trace_seq*,char) ;

const char *
trace_print_array_seq(struct trace_seq *p, const void *buf, int count,
        size_t el_size)
{
 const char *ret = trace_seq_buffer_ptr(p);
 const char *prefix = "";
 void *ptr = (void *)buf;
 size_t buf_len = count * el_size;

 trace_seq_putc(p, '{');

 while (ptr < buf + buf_len) {
  switch (el_size) {
  case 1:
   trace_seq_printf(p, "%s0x%x", prefix,
      *(u8 *)ptr);
   break;
  case 2:
   trace_seq_printf(p, "%s0x%x", prefix,
      *(u16 *)ptr);
   break;
  case 4:
   trace_seq_printf(p, "%s0x%x", prefix,
      *(u32 *)ptr);
   break;
  case 8:
   trace_seq_printf(p, "%s0x%llx", prefix,
      *(u64 *)ptr);
   break;
  default:
   trace_seq_printf(p, "BAD SIZE:%zu 0x%x", el_size,
      *(u8 *)ptr);
   el_size = 1;
  }
  prefix = ",";
  ptr += el_size;
 }

 trace_seq_putc(p, '}');
 trace_seq_putc(p, 0);

 return ret;
}
