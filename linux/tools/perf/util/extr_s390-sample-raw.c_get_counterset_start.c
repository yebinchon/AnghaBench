
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int get_counterset_start(int setnr)
{
 switch (setnr) {
 case 132:
  return 0;
 case 128:
  return 32;
 case 131:
  return 64;
 case 130:
  return 128;
 case 129:
  return 448;
 default:
  return -1;
 }
}
