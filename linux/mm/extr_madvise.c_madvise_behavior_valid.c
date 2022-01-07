
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool
madvise_behavior_valid(int behavior)
{
 switch (behavior) {
 case 146:
 case 144:
 case 136:
 case 132:
 case 134:
 case 133:
 case 129:
 case 143:
 case 142:
 case 148:
 case 135:
 case 145:
 case 147:
 case 128:
 case 139:




  return 1;

 default:
  return 0;
 }
}
