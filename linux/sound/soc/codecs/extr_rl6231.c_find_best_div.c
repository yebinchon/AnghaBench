
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int find_best_div(unsigned int in,
 unsigned int max, unsigned int div)
{
 unsigned int d;

 if (in <= max)
  return 1;

 d = in / max;
 if (in % max)
  d++;

 while (div % d != 0)
  d++;


 return d;
}
