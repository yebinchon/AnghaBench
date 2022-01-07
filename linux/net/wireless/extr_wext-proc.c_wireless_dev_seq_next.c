
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct net {int dummy; } ;
typedef int loff_t ;


 void* SEQ_START_TOKEN ;
 void* first_net_device (struct net*) ;
 void* next_net_device (void*) ;
 struct net* seq_file_net (struct seq_file*) ;

__attribute__((used)) static void *wireless_dev_seq_next(struct seq_file *seq, void *v, loff_t *pos)
{
 struct net *net = seq_file_net(seq);

 ++*pos;

 return v == SEQ_START_TOKEN ?
  first_net_device(net) : next_net_device(v);
}
