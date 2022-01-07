
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* correct_addr_and_bit_unaligned (int*,void*) ;
 int ocfs2_test_bit (int,void*) ;

__attribute__((used)) static inline int ocfs2_test_bit_unaligned(int bit, void *bitmap)
{
 bitmap = correct_addr_and_bit_unaligned(&bit, bitmap);
 return ocfs2_test_bit(bit, bitmap);
}
