
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long PAGE_SIZE ;
 unsigned int roundup_pow_of_two (unsigned long) ;

unsigned int round_pipe_size(unsigned long size)
{
 if (size > (1U << 31))
  return 0;


 if (size < PAGE_SIZE)
  return PAGE_SIZE;

 return roundup_pow_of_two(size);
}
