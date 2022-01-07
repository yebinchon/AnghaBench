
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t __u32 ;
struct TYPE_2__ {unsigned int sick_mask; } ;


 TYPE_1__* type_to_health_flag ;

unsigned int
xchk_health_mask_for_scrub_type(
 __u32 scrub_type)
{
 return type_to_health_flag[scrub_type].sick_mask;
}
