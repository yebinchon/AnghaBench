
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const u16 ;


 int const DCCPAV_MAX_ACKVEC_LEN ;

__attribute__((used)) static inline u16 __ackvec_idx_add(const u16 a, const u16 b)
{
 return (a + b) % DCCPAV_MAX_ACKVEC_LEN;
}
