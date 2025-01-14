
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct seq_file {struct net* private; } ;
struct TYPE_5__ {int udplite_statistics; int udp_statistics; int tcp_statistics; } ;
struct net {TYPE_1__ mib; } ;
struct TYPE_6__ {unsigned long name; scalar_t__ entry; } ;


 int TCPUDP_MIB_MAX ;
 scalar_t__ TCP_MIB_MAXCONN ;
 int memset (unsigned long*,int ,int) ;
 int seq_printf (struct seq_file*,char*,unsigned long) ;
 int seq_putc (struct seq_file*,char) ;
 int seq_puts (struct seq_file*,char*) ;
 TYPE_2__* snmp4_tcp_list ;
 TYPE_2__* snmp4_udp_list ;
 int snmp_get_cpu_field_batch (unsigned long*,TYPE_2__*,int ) ;

__attribute__((used)) static int snmp_seq_show_tcp_udp(struct seq_file *seq, void *v)
{
 unsigned long buff[TCPUDP_MIB_MAX];
 struct net *net = seq->private;
 int i;

 memset(buff, 0, TCPUDP_MIB_MAX * sizeof(unsigned long));

 seq_puts(seq, "\nTcp:");
 for (i = 0; snmp4_tcp_list[i].name; i++)
  seq_printf(seq, " %s", snmp4_tcp_list[i].name);

 seq_puts(seq, "\nTcp:");
 snmp_get_cpu_field_batch(buff, snmp4_tcp_list,
     net->mib.tcp_statistics);
 for (i = 0; snmp4_tcp_list[i].name; i++) {

  if (snmp4_tcp_list[i].entry == TCP_MIB_MAXCONN)
   seq_printf(seq, " %ld", buff[i]);
  else
   seq_printf(seq, " %lu", buff[i]);
 }

 memset(buff, 0, TCPUDP_MIB_MAX * sizeof(unsigned long));

 snmp_get_cpu_field_batch(buff, snmp4_udp_list,
     net->mib.udp_statistics);
 seq_puts(seq, "\nUdp:");
 for (i = 0; snmp4_udp_list[i].name; i++)
  seq_printf(seq, " %s", snmp4_udp_list[i].name);
 seq_puts(seq, "\nUdp:");
 for (i = 0; snmp4_udp_list[i].name; i++)
  seq_printf(seq, " %lu", buff[i]);

 memset(buff, 0, TCPUDP_MIB_MAX * sizeof(unsigned long));


 seq_puts(seq, "\nUdpLite:");
 snmp_get_cpu_field_batch(buff, snmp4_udp_list,
     net->mib.udplite_statistics);
 for (i = 0; snmp4_udp_list[i].name; i++)
  seq_printf(seq, " %s", snmp4_udp_list[i].name);
 seq_puts(seq, "\nUdpLite:");
 for (i = 0; snmp4_udp_list[i].name; i++)
  seq_printf(seq, " %lu", buff[i]);

 seq_putc(seq, '\n');
 return 0;
}
