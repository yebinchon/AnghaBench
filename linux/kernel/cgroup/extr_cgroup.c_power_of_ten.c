
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;



__attribute__((used)) static u64 power_of_ten(int power)
{
 u64 v = 1;
 while (power--)
  v *= 10;
 return v;
}
