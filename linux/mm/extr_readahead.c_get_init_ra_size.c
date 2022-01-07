
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long roundup_pow_of_two (unsigned long) ;

__attribute__((used)) static unsigned long get_init_ra_size(unsigned long size, unsigned long max)
{
 unsigned long newsize = roundup_pow_of_two(size);

 if (newsize <= max / 32)
  newsize = newsize * 4;
 else if (newsize <= max / 4)
  newsize = newsize * 2;
 else
  newsize = max;

 return newsize;
}
