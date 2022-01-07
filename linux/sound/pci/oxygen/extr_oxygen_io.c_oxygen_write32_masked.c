
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int * _32; } ;
struct oxygen {TYPE_1__ saved_registers; scalar_t__ addr; } ;


 int cpu_to_le32 (int) ;
 int inl (scalar_t__) ;
 int outl (int,scalar_t__) ;

void oxygen_write32_masked(struct oxygen *chip, unsigned int reg,
      u32 value, u32 mask)
{
 u32 tmp = inl(chip->addr + reg);
 tmp &= ~mask;
 tmp |= value & mask;
 outl(tmp, chip->addr + reg);
 chip->saved_registers._32[reg / 4] = cpu_to_le32(tmp);
}
