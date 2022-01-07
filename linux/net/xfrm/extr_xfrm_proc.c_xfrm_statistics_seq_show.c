
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct seq_file {struct net* private; } ;
struct TYPE_4__ {int xfrm_statistics; } ;
struct net {TYPE_1__ mib; } ;
struct TYPE_5__ {scalar_t__ name; } ;


 int LINUX_MIB_XFRMMAX ;
 int memset (unsigned long*,int ,int) ;
 int seq_printf (struct seq_file*,char*,scalar_t__,unsigned long) ;
 int snmp_get_cpu_field_batch (unsigned long*,TYPE_2__*,int ) ;
 TYPE_2__* xfrm_mib_list ;

__attribute__((used)) static int xfrm_statistics_seq_show(struct seq_file *seq, void *v)
{
 unsigned long buff[LINUX_MIB_XFRMMAX];
 struct net *net = seq->private;
 int i;

 memset(buff, 0, sizeof(unsigned long) * LINUX_MIB_XFRMMAX);

 snmp_get_cpu_field_batch(buff, xfrm_mib_list,
     net->mib.xfrm_statistics);
 for (i = 0; xfrm_mib_list[i].name; i++)
  seq_printf(seq, "%-24s\t%lu\n", xfrm_mib_list[i].name,
      buff[i]);

 return 0;
}
