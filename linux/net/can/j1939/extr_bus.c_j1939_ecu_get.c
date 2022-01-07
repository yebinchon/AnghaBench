
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct j1939_ecu {int kref; } ;


 int kref_get (int *) ;

__attribute__((used)) static void j1939_ecu_get(struct j1939_ecu *ecu)
{
 kref_get(&ecu->kref);
}
