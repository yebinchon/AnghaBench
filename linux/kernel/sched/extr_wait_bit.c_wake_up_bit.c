
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __wake_up_bit (int ,void*,int) ;
 int bit_waitqueue (void*,int) ;

void wake_up_bit(void *word, int bit)
{
 __wake_up_bit(bit_waitqueue(word, bit), word, bit);
}
