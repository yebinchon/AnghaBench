
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int icmp_put (struct seq_file*) ;
 int icmpmsg_put (struct seq_file*) ;
 int snmp_seq_show_ipstats (struct seq_file*,void*) ;
 int snmp_seq_show_tcp_udp (struct seq_file*,void*) ;

__attribute__((used)) static int snmp_seq_show(struct seq_file *seq, void *v)
{
 snmp_seq_show_ipstats(seq, v);

 icmp_put(seq);
 icmpmsg_put(seq);

 snmp_seq_show_tcp_udp(seq, v);

 return 0;
}
