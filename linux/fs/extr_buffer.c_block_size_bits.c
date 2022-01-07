
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ilog2 (unsigned int) ;

__attribute__((used)) static inline int block_size_bits(unsigned int blocksize)
{
 return ilog2(blocksize);
}
