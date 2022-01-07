
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int constraints; } ;


 TYPE_1__** pm_qos_array ;
 int pm_qos_read_value (int ) ;

int pm_qos_request(int pm_qos_class)
{
 return pm_qos_read_value(pm_qos_array[pm_qos_class]->constraints);
}
