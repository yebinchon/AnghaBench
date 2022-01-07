
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_cs46xx {scalar_t__ acpi_port; scalar_t__ amplifier; } ;


 int inw (scalar_t__) ;
 int outw (int,scalar_t__) ;

__attribute__((used)) static void clkrun_hack(struct snd_cs46xx *chip, int change)
{
 u16 control, nval;

 if (!chip->acpi_port)
  return;

 chip->amplifier += change;


 nval = control = inw(chip->acpi_port + 0x10);


 if (! chip->amplifier)
  nval |= 0x2000;
 else
  nval &= ~0x2000;
 if (nval != control)
  outw(nval, chip->acpi_port + 0x10);
}
