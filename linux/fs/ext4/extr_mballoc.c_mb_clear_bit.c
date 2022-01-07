
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ext4_clear_bit (int,void*) ;
 void* mb_correct_addr_and_bit (int*,void*) ;

__attribute__((used)) static inline void mb_clear_bit(int bit, void *addr)
{
 addr = mb_correct_addr_and_bit(&bit, addr);
 ext4_clear_bit(bit, addr);
}
