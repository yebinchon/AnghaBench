
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct es1968 {scalar_t__ io_port; scalar_t__ rmidi; } ;


 unsigned short ESM_HIRQ_DSIE ;
 unsigned short ESM_HIRQ_HW_VOLUME ;
 unsigned short ESM_HIRQ_MPU401 ;
 scalar_t__ ESM_PORT_HOST_IRQ ;
 int outb (unsigned short,scalar_t__) ;
 int outw (unsigned short,scalar_t__) ;

__attribute__((used)) static void snd_es1968_start_irq(struct es1968 *chip)
{
 unsigned short w;
 w = ESM_HIRQ_DSIE | ESM_HIRQ_HW_VOLUME;
 if (chip->rmidi)
  w |= ESM_HIRQ_MPU401;
 outb(w, chip->io_port + 0x1A);
 outw(w, chip->io_port + ESM_PORT_HOST_IRQ);
}
