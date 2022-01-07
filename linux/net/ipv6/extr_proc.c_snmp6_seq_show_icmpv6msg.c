
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
typedef int name ;
typedef int atomic_long_t ;


 int ICMP6MSG_MIB_MAX ;
 unsigned long atomic_long_read (int *) ;
 char** icmp6type2name ;
 int seq_printf (struct seq_file*,char*,char*,unsigned long) ;
 int snprintf (char*,int,char*,char*,...) ;

__attribute__((used)) static void snmp6_seq_show_icmpv6msg(struct seq_file *seq, atomic_long_t *smib)
{
 char name[32];
 int i;


 for (i = 0; i < ICMP6MSG_MIB_MAX; i++) {
  int icmptype;
  const char *p;

  icmptype = i & 0xff;
  p = icmp6type2name[icmptype];
  if (!p)
   continue;
  snprintf(name, sizeof(name), "Icmp6%s%s",
   i & 0x100 ? "Out" : "In", p);
  seq_printf(seq, "%-32s\t%lu\n", name,
      atomic_long_read(smib + i));
 }


 for (i = 0; i < ICMP6MSG_MIB_MAX; i++) {
  unsigned long val;

  val = atomic_long_read(smib + i);
  if (!val)
   continue;
  snprintf(name, sizeof(name), "Icmp6%sType%u",
   i & 0x100 ? "Out" : "In", i & 0xff);
  seq_printf(seq, "%-32s\t%lu\n", name, val);
 }
}
