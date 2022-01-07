
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mrp_application {int pkttype; } ;


 int dev_remove_pack (int *) ;

void mrp_unregister_application(struct mrp_application *appl)
{
 dev_remove_pack(&appl->pkttype);
}
