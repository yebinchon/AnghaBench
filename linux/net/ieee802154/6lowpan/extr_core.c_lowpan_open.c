
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int lowpan_rx_init () ;
 int open_count ;

__attribute__((used)) static int lowpan_open(struct net_device *dev)
{
 if (!open_count)
  lowpan_rx_init();
 open_count++;
 return 0;
}
