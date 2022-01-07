
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *arizona_dai_clk_str(int clk_id)
{
 switch (clk_id) {
 case 128:
  return "SYSCLK";
 case 129:
  return "ASYNCCLK";
 default:
  return "Unknown clock";
 }
}
