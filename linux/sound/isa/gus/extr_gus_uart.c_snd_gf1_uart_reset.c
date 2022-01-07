
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_gus_card {scalar_t__ uart_enable; } ;


 int snd_gf1_uart_cmd (struct snd_gus_card*,int) ;
 int udelay (int) ;

__attribute__((used)) static void snd_gf1_uart_reset(struct snd_gus_card * gus, int close)
{
 snd_gf1_uart_cmd(gus, 0x03);
 if (!close && gus->uart_enable) {
  udelay(160);
  snd_gf1_uart_cmd(gus, 0x00);
 }
}
