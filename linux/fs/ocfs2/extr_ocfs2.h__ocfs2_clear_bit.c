
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __clear_bit_le (unsigned int,unsigned long*) ;

__attribute__((used)) static inline void _ocfs2_clear_bit(unsigned int bit, unsigned long *bitmap)
{
 __clear_bit_le(bit, bitmap);
}
