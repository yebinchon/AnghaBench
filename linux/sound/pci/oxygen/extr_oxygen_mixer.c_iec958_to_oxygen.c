
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int* status; } ;
struct TYPE_4__ {TYPE_1__ iec958; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int OXYGEN_SPDIF_C ;
 int OXYGEN_SPDIF_CATEGORY_SHIFT ;
 int OXYGEN_SPDIF_NONAUDIO ;
 int OXYGEN_SPDIF_PREEMPHASIS ;
 int OXYGEN_SPDIF_V ;

__attribute__((used)) static u32 iec958_to_oxygen(struct snd_ctl_elem_value *value)
{
 u32 bits;

 bits = value->value.iec958.status[0] &
  (OXYGEN_SPDIF_NONAUDIO | OXYGEN_SPDIF_C |
   OXYGEN_SPDIF_PREEMPHASIS);
 bits |= value->value.iec958.status[1] << OXYGEN_SPDIF_CATEGORY_SHIFT;
 if (bits & OXYGEN_SPDIF_NONAUDIO)
  bits |= OXYGEN_SPDIF_V;
 return bits;
}
