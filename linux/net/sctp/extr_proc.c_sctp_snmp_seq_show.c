
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct seq_file {struct net* private; } ;
struct TYPE_4__ {int sctp_statistics; } ;
struct net {TYPE_1__ sctp; } ;
struct TYPE_5__ {scalar_t__ name; } ;


 int SCTP_MIB_MAX ;
 int memset (unsigned long*,int ,int) ;
 TYPE_2__* sctp_snmp_list ;
 int seq_printf (struct seq_file*,char*,scalar_t__,unsigned long) ;
 int snmp_get_cpu_field_batch (unsigned long*,TYPE_2__*,int ) ;

__attribute__((used)) static int sctp_snmp_seq_show(struct seq_file *seq, void *v)
{
 unsigned long buff[SCTP_MIB_MAX];
 struct net *net = seq->private;
 int i;

 memset(buff, 0, sizeof(unsigned long) * SCTP_MIB_MAX);

 snmp_get_cpu_field_batch(buff, sctp_snmp_list,
     net->sctp.sctp_statistics);
 for (i = 0; sctp_snmp_list[i].name; i++)
  seq_printf(seq, "%-32s\t%ld\n", sctp_snmp_list[i].name,
      buff[i]);

 return 0;
}
