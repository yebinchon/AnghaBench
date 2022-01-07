
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int BITS_PER_LONG ;
 int pr_info (char*,unsigned long,...) ;

void xa_dump_index(unsigned long index, unsigned int shift)
{
 if (!shift)
  pr_info("%lu: ", index);
 else if (shift >= BITS_PER_LONG)
  pr_info("0-%lu: ", ~0UL);
 else
  pr_info("%lu-%lu: ", index, index | ((1UL << shift) - 1));
}
