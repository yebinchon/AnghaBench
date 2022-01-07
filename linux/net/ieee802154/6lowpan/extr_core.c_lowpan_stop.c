
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int lowpan_rx_exit () ;
 int open_count ;

__attribute__((used)) static int lowpan_stop(struct net_device *dev)
{
 open_count--;
 if (!open_count)
  lowpan_rx_exit();
 return 0;
}
