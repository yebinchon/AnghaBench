
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static double round_text_size(double size)
{
 int loop = 100;
 double target = 10.0;

 if (size >= 10.0)
  return size;
 while (loop--) {
  if (size >= target)
   return target;
  target = target / 2.0;
 }
 return size;
}
