
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packet_offload {int dummy; } ;


 int __dev_remove_offload (struct packet_offload*) ;
 int synchronize_net () ;

void dev_remove_offload(struct packet_offload *po)
{
 __dev_remove_offload(po);

 synchronize_net();
}
