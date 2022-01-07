
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct seq_file {struct net* private; } ;
struct TYPE_5__ {int icmp_statistics; TYPE_1__* icmpmsg_statistics; } ;
struct net {TYPE_2__ mib; } ;
typedef int atomic_long_t ;
struct TYPE_6__ {int index; scalar_t__ name; } ;
struct TYPE_4__ {int * mibs; } ;


 int ICMP_MIB_CSUMERRORS ;
 int ICMP_MIB_INERRORS ;
 int ICMP_MIB_INMSGS ;
 int ICMP_MIB_OUTERRORS ;
 int ICMP_MIB_OUTMSGS ;
 scalar_t__ atomic_long_read (int *) ;
 TYPE_3__* icmpmibmap ;
 int seq_printf (struct seq_file*,char*,scalar_t__,...) ;
 int seq_puts (struct seq_file*,char*) ;
 int snmp_fold_field (int ,int ) ;

__attribute__((used)) static void icmp_put(struct seq_file *seq)
{
 int i;
 struct net *net = seq->private;
 atomic_long_t *ptr = net->mib.icmpmsg_statistics->mibs;

 seq_puts(seq, "\nIcmp: InMsgs InErrors InCsumErrors");
 for (i = 0; icmpmibmap[i].name; i++)
  seq_printf(seq, " In%s", icmpmibmap[i].name);
 seq_puts(seq, " OutMsgs OutErrors");
 for (i = 0; icmpmibmap[i].name; i++)
  seq_printf(seq, " Out%s", icmpmibmap[i].name);
 seq_printf(seq, "\nIcmp: %lu %lu %lu",
  snmp_fold_field(net->mib.icmp_statistics, ICMP_MIB_INMSGS),
  snmp_fold_field(net->mib.icmp_statistics, ICMP_MIB_INERRORS),
  snmp_fold_field(net->mib.icmp_statistics, ICMP_MIB_CSUMERRORS));
 for (i = 0; icmpmibmap[i].name; i++)
  seq_printf(seq, " %lu",
      atomic_long_read(ptr + icmpmibmap[i].index));
 seq_printf(seq, " %lu %lu",
  snmp_fold_field(net->mib.icmp_statistics, ICMP_MIB_OUTMSGS),
  snmp_fold_field(net->mib.icmp_statistics, ICMP_MIB_OUTERRORS));
 for (i = 0; icmpmibmap[i].name; i++)
  seq_printf(seq, " %lu",
      atomic_long_read(ptr + (icmpmibmap[i].index | 0x100)));
}
