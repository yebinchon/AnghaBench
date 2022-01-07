
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_m3 {int reset_state; } ;


 int DSP_PORT_CONTROL_REG_B ;
 int REGB_ENABLE_RESET ;
 int snd_m3_outb (struct snd_m3*,int,int ) ;

__attribute__((used)) static void snd_m3_assp_continue(struct snd_m3 *chip)
{
 snd_m3_outb(chip, chip->reset_state | REGB_ENABLE_RESET, DSP_PORT_CONTROL_REG_B);
}
