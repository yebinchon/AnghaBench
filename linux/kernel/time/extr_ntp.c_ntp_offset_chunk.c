
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s64 ;


 scalar_t__ SHIFT_PLL ;
 int shift_right (int ,scalar_t__) ;
 scalar_t__ time_constant ;

__attribute__((used)) static inline s64 ntp_offset_chunk(s64 offset)
{
 return shift_right(offset, SHIFT_PLL + time_constant);
}
