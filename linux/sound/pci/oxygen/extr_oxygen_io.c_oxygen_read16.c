
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct oxygen {scalar_t__ addr; } ;


 int inw (scalar_t__) ;

u16 oxygen_read16(struct oxygen *chip, unsigned int reg)
{
 return inw(chip->addr + reg);
}
