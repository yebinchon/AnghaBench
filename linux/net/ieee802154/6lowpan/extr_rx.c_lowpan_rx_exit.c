
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dev_remove_pack (int *) ;
 int lowpan_packet_type ;

void lowpan_rx_exit(void)
{
 dev_remove_pack(&lowpan_packet_type);
}
