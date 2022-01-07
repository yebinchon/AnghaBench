
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __wsum ;


 int csum_block_add (int ,int ,size_t) ;
 int csum_partial_copy_nocheck (void const*,void*,size_t,int ) ;

__attribute__((used)) static __wsum csum_and_memcpy(void *to, const void *from, size_t len,
         __wsum sum, size_t off)
{
 __wsum next = csum_partial_copy_nocheck(from, to, len, 0);
 return csum_block_add(sum, next, off);
}
