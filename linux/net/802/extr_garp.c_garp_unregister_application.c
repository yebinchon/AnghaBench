
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct garp_application {int proto; } ;


 int stp_proto_unregister (int *) ;

void garp_unregister_application(struct garp_application *appl)
{
 stp_proto_unregister(&appl->proto);
}
