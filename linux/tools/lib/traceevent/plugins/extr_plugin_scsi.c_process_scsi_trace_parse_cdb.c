
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_seq {int dummy; } ;


 int scsi_trace_parse_cdb (struct trace_seq*,unsigned char*,unsigned long long) ;

unsigned long long process_scsi_trace_parse_cdb(struct trace_seq *s,
      unsigned long long *args)
{
 scsi_trace_parse_cdb(s, (unsigned char *) (unsigned long) args[1], args[2]);
 return 0;
}
