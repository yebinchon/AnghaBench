
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct seq_file {struct net* private; } ;
struct TYPE_4__ {TYPE_1__* icmpmsg_statistics; } ;
struct net {TYPE_2__ mib; } ;
struct TYPE_3__ {int * mibs; } ;


 int ICMPMSG_MIB_MAX ;
 int PERLINE ;
 unsigned long atomic_long_read (int *) ;
 int icmpmsg_put_line (struct seq_file*,unsigned long*,unsigned short*,int) ;

__attribute__((used)) static void icmpmsg_put(struct seq_file *seq)
{


 int i, count;
 unsigned short type[16];
 unsigned long vals[16], val;
 struct net *net = seq->private;

 count = 0;
 for (i = 0; i < ICMPMSG_MIB_MAX; i++) {
  val = atomic_long_read(&net->mib.icmpmsg_statistics->mibs[i]);
  if (val) {
   type[count] = i;
   vals[count++] = val;
  }
  if (count == 16) {
   icmpmsg_put_line(seq, vals, type, count);
   count = 0;
  }
 }
 icmpmsg_put_line(seq, vals, type, count);


}
