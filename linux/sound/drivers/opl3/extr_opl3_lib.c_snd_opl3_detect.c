
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_opl3 {scalar_t__ hardware; int r_port; int (* command ) (struct snd_opl3*,int,int) ;int l_port; } ;


 int ENODEV ;
 scalar_t__ OPL3_HW_AUTO ;
 scalar_t__ OPL3_HW_OPL2 ;
 scalar_t__ OPL3_HW_OPL3 ;
 int OPL3_IRQ_RESET ;
 int OPL3_LEFT ;
 int OPL3_REG_TIMER1 ;
 int OPL3_REG_TIMER_CONTROL ;
 int OPL3_TIMER1_MASK ;
 int OPL3_TIMER1_START ;
 int OPL3_TIMER2_MASK ;
 unsigned char inb (int ) ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_printd (char*,unsigned char) ;
 int stub1 (struct snd_opl3*,int,int) ;
 int stub2 (struct snd_opl3*,int,int) ;
 int stub3 (struct snd_opl3*,int,int) ;
 int stub4 (struct snd_opl3*,int,int) ;
 int stub5 (struct snd_opl3*,int,int) ;
 int stub6 (struct snd_opl3*,int,int) ;
 int udelay (int) ;

__attribute__((used)) static int snd_opl3_detect(struct snd_opl3 * opl3)
{
 unsigned char stat1, stat2, signature;


 opl3->command(opl3, OPL3_LEFT | OPL3_REG_TIMER_CONTROL, OPL3_TIMER1_MASK | OPL3_TIMER2_MASK);

 opl3->command(opl3, OPL3_LEFT | OPL3_REG_TIMER_CONTROL, OPL3_IRQ_RESET);
 signature = stat1 = inb(opl3->l_port);
 if ((stat1 & 0xe0) != 0x00) {
  snd_printd("OPL3: stat1 = 0x%x\n", stat1);
  return -ENODEV;
 }

 opl3->command(opl3, OPL3_LEFT | OPL3_REG_TIMER1, 0xff);

 opl3->command(opl3, OPL3_LEFT | OPL3_REG_TIMER_CONTROL, OPL3_TIMER2_MASK | OPL3_TIMER1_START);

 udelay(200);

 stat2 = inb(opl3->l_port);

 opl3->command(opl3, OPL3_LEFT | OPL3_REG_TIMER_CONTROL, OPL3_TIMER1_MASK | OPL3_TIMER2_MASK);

 opl3->command(opl3, OPL3_LEFT | OPL3_REG_TIMER_CONTROL, OPL3_IRQ_RESET);
 if ((stat2 & 0xe0) != 0xc0) {
  snd_printd("OPL3: stat2 = 0x%x\n", stat2);
  return -ENODEV;
 }



 if (opl3->hardware != OPL3_HW_AUTO)
  return 0;


 if (signature == 0x06) {
  opl3->hardware = OPL3_HW_OPL2;
 } else {




  if (snd_BUG_ON(!opl3->r_port))
   return -ENODEV;
  opl3->hardware = OPL3_HW_OPL3;
 }
 return 0;
}
