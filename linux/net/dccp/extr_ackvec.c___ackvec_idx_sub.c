
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;


 scalar_t__ const DCCPAV_MAX_ACKVEC_LEN ;
 scalar_t__ __ackvec_idx_add (scalar_t__ const,scalar_t__ const) ;

__attribute__((used)) static inline u16 __ackvec_idx_sub(const u16 a, const u16 b)
{
 return __ackvec_idx_add(a, DCCPAV_MAX_ACKVEC_LEN - b);
}
