
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct j1939_ecu {int kref; } ;


 int __j1939_ecu_release ;
 int kref_put (int *,int ) ;

void j1939_ecu_put(struct j1939_ecu *ecu)
{
 kref_put(&ecu->kref, __j1939_ecu_release);
}
