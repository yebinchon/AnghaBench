
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct net_device {int dummy; } ;
struct can_dev_rcv_lists {int * rx; } ;


 int DNAME (struct net_device*) ;
 int can_print_rcvlist (struct seq_file*,int *,struct net_device*) ;
 int can_print_recv_banner (struct seq_file*) ;
 int hlist_empty (int *) ;
 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static inline void can_rcvlist_proc_show_one(struct seq_file *m, int idx,
          struct net_device *dev,
          struct can_dev_rcv_lists *dev_rcv_lists)
{
 if (!hlist_empty(&dev_rcv_lists->rx[idx])) {
  can_print_recv_banner(m);
  can_print_rcvlist(m, &dev_rcv_lists->rx[idx], dev);
 } else
  seq_printf(m, "  (%s: no entry)\n", DNAME(dev));

}
