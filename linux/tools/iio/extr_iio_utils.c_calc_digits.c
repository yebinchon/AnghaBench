
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int calc_digits(int num)
{
 int count = 0;

 while (num != 0) {
  num /= 10;
  count++;
 }

 return count;
}
