
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_seq {char* buffer; int len; } ;


 int trace_seq_printf (struct trace_seq*,char*,unsigned int) ;
 int trace_seq_putc (struct trace_seq*,int ) ;

__attribute__((used)) static const char *
scsi_trace_unmap(struct trace_seq *p, unsigned char *cdb, int len)
{
 const char *ret = p->buffer + p->len;
 unsigned int regions = cdb[7] << 8 | cdb[8];

 trace_seq_printf(p, "regions=%u", (regions - 8) / 16);
 trace_seq_putc(p, 0);
 return ret;
}
