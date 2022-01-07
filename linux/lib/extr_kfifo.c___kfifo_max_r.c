
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
unsigned int __kfifo_max_r(unsigned int len, size_t recsize)
{
 unsigned int max = (1 << (recsize << 3)) - 1;

 if (len > max)
  return max;
 return len;
}
