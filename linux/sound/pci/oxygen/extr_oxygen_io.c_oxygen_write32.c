
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int * _32; } ;
struct oxygen {TYPE_1__ saved_registers; scalar_t__ addr; } ;


 int cpu_to_le32 (int ) ;
 int outl (int ,scalar_t__) ;

void oxygen_write32(struct oxygen *chip, unsigned int reg, u32 value)
{
 outl(value, chip->addr + reg);
 chip->saved_registers._32[reg / 4] = cpu_to_le32(value);
}
