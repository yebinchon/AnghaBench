
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 scalar_t__ LOWPAN_DISPATCH_HC1 ;

__attribute__((used)) static inline bool lowpan_is_hc1(u8 dispatch)
{
 return dispatch == LOWPAN_DISPATCH_HC1;
}
