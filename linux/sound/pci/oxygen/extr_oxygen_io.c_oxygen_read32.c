
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct oxygen {scalar_t__ addr; } ;


 int inl (scalar_t__) ;

u32 oxygen_read32(struct oxygen *chip, unsigned int reg)
{
 return inl(chip->addr + reg);
}
