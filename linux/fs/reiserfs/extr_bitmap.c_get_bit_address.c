
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_blocksize_bits; int s_blocksize; } ;
typedef int b_blocknr_t ;



__attribute__((used)) static inline void get_bit_address(struct super_block *s,
       b_blocknr_t block,
       unsigned int *bmap_nr,
       unsigned int *offset)
{




 *bmap_nr = block >> (s->s_blocksize_bits + 3);

 *offset = block & ((s->s_blocksize << 3) - 1);
}
