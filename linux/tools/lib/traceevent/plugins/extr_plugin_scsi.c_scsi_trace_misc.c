
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_seq {char* buffer; int len; } ;


 int trace_seq_printf (struct trace_seq*,char*) ;
 int trace_seq_putc (struct trace_seq*,int ) ;

__attribute__((used)) static const char *
scsi_trace_misc(struct trace_seq *p, unsigned char *cdb, int len)
{
 const char *ret = p->buffer + p->len;

 trace_seq_printf(p, "-");
 trace_seq_putc(p, 0);
 return ret;
}
