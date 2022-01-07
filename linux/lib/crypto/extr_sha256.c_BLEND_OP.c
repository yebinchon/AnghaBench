
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ s0 (scalar_t__) ;
 scalar_t__ s1 (scalar_t__) ;

__attribute__((used)) static inline void BLEND_OP(int I, u32 *W)
{
 W[I] = s1(W[I-2]) + W[I-7] + s0(W[I-15]) + W[I-16];
}
