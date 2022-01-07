
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_opl4 {int fm_port; } ;


 int OPL4_STATUS_LOAD ;
 int inb (int ) ;
 int udelay (int) ;

__attribute__((used)) static void snd_opl4_wait_for_wave_headers(struct snd_opl4 *opl4)
{
 int timeout = 200;

 while ((inb(opl4->fm_port) & OPL4_STATUS_LOAD) && --timeout > 0)
  udelay(10);
}
