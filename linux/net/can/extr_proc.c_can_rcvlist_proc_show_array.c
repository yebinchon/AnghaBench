
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct net_device {int dummy; } ;
struct hlist_head {int dummy; } ;


 int DNAME (struct net_device*) ;
 int can_print_rcvlist (struct seq_file*,struct hlist_head*,struct net_device*) ;
 int can_print_recv_banner (struct seq_file*) ;
 int hlist_empty (struct hlist_head*) ;
 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static inline void can_rcvlist_proc_show_array(struct seq_file *m,
            struct net_device *dev,
            struct hlist_head *rcv_array,
            unsigned int rcv_array_sz)
{
 unsigned int i;
 int all_empty = 1;


 for (i = 0; i < rcv_array_sz; i++)
  if (!hlist_empty(&rcv_array[i])) {
   all_empty = 0;
   break;
  }

 if (!all_empty) {
  can_print_recv_banner(m);
  for (i = 0; i < rcv_array_sz; i++) {
   if (!hlist_empty(&rcv_array[i]))
    can_print_rcvlist(m, &rcv_array[i], dev);
  }
 } else
  seq_printf(m, "  (%s: no entry)\n", DNAME(dev));
}
