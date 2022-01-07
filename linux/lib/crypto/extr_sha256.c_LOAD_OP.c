
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int __u32 ;


 int get_unaligned_be32 (int *) ;

__attribute__((used)) static inline void LOAD_OP(int I, u32 *W, const u8 *input)
{
 W[I] = get_unaligned_be32((__u32 *)input + I);
}
