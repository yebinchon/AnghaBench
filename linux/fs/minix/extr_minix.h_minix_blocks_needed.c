
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DIV_ROUND_UP (unsigned int,unsigned int) ;

__attribute__((used)) static inline unsigned minix_blocks_needed(unsigned bits, unsigned blocksize)
{
 return DIV_ROUND_UP(bits, blocksize * 8);
}
