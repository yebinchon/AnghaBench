
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm_qos_constraints {int target_value; } ;
typedef int s32 ;



__attribute__((used)) static inline void pm_qos_set_value(struct pm_qos_constraints *c, s32 value)
{
 c->target_value = value;
}
