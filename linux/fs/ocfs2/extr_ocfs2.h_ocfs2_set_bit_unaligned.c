
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* correct_addr_and_bit_unaligned (int*,void*) ;
 int ocfs2_set_bit (int,void*) ;

__attribute__((used)) static inline void ocfs2_set_bit_unaligned(int bit, void *bitmap)
{
 bitmap = correct_addr_and_bit_unaligned(&bit, bitmap);
 ocfs2_set_bit(bit, bitmap);
}
