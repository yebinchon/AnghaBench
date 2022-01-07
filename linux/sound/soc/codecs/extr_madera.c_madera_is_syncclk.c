
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;






__attribute__((used)) static int madera_is_syncclk(int clk_id)
{
 switch (clk_id) {
 case 130:
 case 129:
 case 128:
  return 1;
 case 132:
 case 131:
  return 0;
 default:
  return -EINVAL;
 }
}
