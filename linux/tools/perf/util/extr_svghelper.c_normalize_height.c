
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static double normalize_height(double height)
{
 if (height < 0.25)
  return 0.25;
 else if (height < 0.50)
  return 0.50;
 else if (height < 0.75)
  return 0.75;
 else
  return 0.100;
}
