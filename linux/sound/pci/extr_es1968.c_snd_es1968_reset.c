
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct es1968 {scalar_t__ io_port; } ;


 scalar_t__ ESM_PORT_HOST_IRQ ;
 int ESM_RESET_DIRECTSOUND ;
 int ESM_RESET_MAESTRO ;
 int outw (int,scalar_t__) ;
 int udelay (int) ;

__attribute__((used)) static void snd_es1968_reset(struct es1968 *chip)
{

 outw(ESM_RESET_MAESTRO | ESM_RESET_DIRECTSOUND,
      chip->io_port + ESM_PORT_HOST_IRQ);
 udelay(10);
 outw(0x0000, chip->io_port + ESM_PORT_HOST_IRQ);
 udelay(10);
}
