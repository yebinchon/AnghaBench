
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm_qos_constraints {int target_value; } ;
typedef int s32 ;



s32 pm_qos_read_value(struct pm_qos_constraints *c)
{
 return c->target_value;
}
