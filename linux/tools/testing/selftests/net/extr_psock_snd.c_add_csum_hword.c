
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;



__attribute__((used)) static unsigned long add_csum_hword(const uint16_t *start, int num_u16)
{
 unsigned long sum = 0;
 int i;

 for (i = 0; i < num_u16; i++)
  sum += start[i];

 return sum;
}
