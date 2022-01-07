
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_seq {int dummy; } ;



 int SERVICE_ACTION32 (unsigned char*) ;



 char const* scsi_trace_misc (struct trace_seq*,unsigned char*,int) ;
 char const* scsi_trace_rw32 (struct trace_seq*,unsigned char*,int) ;

__attribute__((used)) static const char *
scsi_trace_varlen(struct trace_seq *p, unsigned char *cdb, int len)
{
 switch (SERVICE_ACTION32(cdb)) {
 case 131:
 case 130:
 case 129:
 case 128:
  return scsi_trace_rw32(p, cdb, len);
 default:
  return scsi_trace_misc(p, cdb, len);
 }
}
