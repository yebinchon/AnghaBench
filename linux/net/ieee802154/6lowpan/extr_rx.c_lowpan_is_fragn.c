
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int LOWPAN_DISPATCH_FRAGN ;
 int LOWPAN_DISPATCH_FRAG_MASK ;

__attribute__((used)) static inline bool lowpan_is_fragn(u8 dispatch)
{
 return (dispatch & LOWPAN_DISPATCH_FRAG_MASK) == LOWPAN_DISPATCH_FRAGN;
}
