
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;


 int BUG_ON (int) ;
 unsigned int calc_code_bit (unsigned int,unsigned int*) ;
 unsigned int ocfs2_find_next_bit (void*,unsigned int,unsigned int) ;

u32 ocfs2_hamming_encode(u32 parity, void *data, unsigned int d, unsigned int nr)
{
 unsigned int i, b, p = 0;

 BUG_ON(!d);
 for (i = 0; (i = ocfs2_find_next_bit(data, d, i)) < d; i++)
 {




  b = calc_code_bit(nr + i, &p);
  parity ^= b;
 }



 return parity;
}
