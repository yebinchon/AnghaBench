
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct datalink_proto {int sap; } ;


 int kfree (struct datalink_proto*) ;
 int llc_sap_put (int ) ;

void unregister_8022_client(struct datalink_proto *proto)
{
 llc_sap_put(proto->sap);
 kfree(proto);
}
