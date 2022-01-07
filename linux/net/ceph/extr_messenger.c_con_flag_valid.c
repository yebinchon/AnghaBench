
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool con_flag_valid(unsigned long con_flag)
{
 switch (con_flag) {
 case 130:
 case 131:
 case 128:
 case 129:
 case 132:
  return 1;
 default:
  return 0;
 }
}
