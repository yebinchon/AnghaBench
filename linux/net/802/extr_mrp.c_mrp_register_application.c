
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int func; } ;
struct mrp_application {TYPE_1__ pkttype; } ;


 int dev_add_pack (TYPE_1__*) ;
 int mrp_rcv ;

int mrp_register_application(struct mrp_application *appl)
{
 appl->pkttype.func = mrp_rcv;
 dev_add_pack(&appl->pkttype);
 return 0;
}
