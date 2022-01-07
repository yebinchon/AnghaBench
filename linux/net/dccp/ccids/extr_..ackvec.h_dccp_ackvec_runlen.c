
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const u8 ;


 int const DCCPAV_MAX_RUNLEN ;

__attribute__((used)) static inline u8 dccp_ackvec_runlen(const u8 *cell)
{
 return *cell & DCCPAV_MAX_RUNLEN;
}
