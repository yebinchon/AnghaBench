
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;



__attribute__((used)) static inline u16 cs43130_get_ac_reg_val(u16 ac_freq)
{

 return ac_freq / 6;
}
