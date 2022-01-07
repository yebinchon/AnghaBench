
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static double sanitize_val(double x)
{
 if (x < 0 && x >= -0.02)
  return 0.0;
 return x;
}
