
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int read_reg (unsigned int) ;
 int write_reg (unsigned int,int) ;

__attribute__((used)) static inline void update_reg(unsigned int reg, u32 or_val)
{
 u32 newval = read_reg(reg) | or_val;
 write_reg(reg, newval);
}
