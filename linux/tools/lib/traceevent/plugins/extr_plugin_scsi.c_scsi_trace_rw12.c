
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_seq {char* buffer; int len; } ;
typedef unsigned char sector_t ;


 int trace_seq_printf (struct trace_seq*,char*,unsigned long long,unsigned long long,unsigned char) ;
 int trace_seq_putc (struct trace_seq*,int ) ;

__attribute__((used)) static const char *
scsi_trace_rw12(struct trace_seq *p, unsigned char *cdb, int len)
{
 const char *ret = p->buffer + p->len;
 sector_t lba = 0, txlen = 0;

 lba |= (cdb[2] << 24);
 lba |= (cdb[3] << 16);
 lba |= (cdb[4] << 8);
 lba |= cdb[5];
 txlen |= (cdb[6] << 24);
 txlen |= (cdb[7] << 16);
 txlen |= (cdb[8] << 8);
 txlen |= cdb[9];

 trace_seq_printf(p, "lba=%llu txlen=%llu protect=%u",
    (unsigned long long)lba, (unsigned long long)txlen,
    cdb[1] >> 5);
 trace_seq_putc(p, 0);
 return ret;
}
