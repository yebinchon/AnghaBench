
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packet_type {int dummy; } ;


 int __dev_remove_pack (struct packet_type*) ;
 int synchronize_net () ;

void dev_remove_pack(struct packet_type *pt)
{
 __dev_remove_pack(pt);

 synchronize_net();
}
