
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct l3_pins {int (* setmode ) (struct l3_pins*,int) ;int (* setdat ) (struct l3_pins*,int) ;int (* setclk ) (struct l3_pins*,int) ;int mode_hold; int mode_setup; int mode; } ;


 int sendbyte (struct l3_pins*,int ) ;
 int sendbytes (struct l3_pins*,int *,int) ;
 int stub1 (struct l3_pins*,int) ;
 int stub2 (struct l3_pins*,int) ;
 int stub3 (struct l3_pins*,int) ;
 int stub4 (struct l3_pins*,int) ;
 int stub5 (struct l3_pins*,int) ;
 int stub6 (struct l3_pins*,int) ;
 int stub7 (struct l3_pins*,int) ;
 int udelay (int ) ;

int l3_write(struct l3_pins *adap, u8 addr, u8 *data, int len)
{
 adap->setclk(adap, 1);
 adap->setdat(adap, 1);
 adap->setmode(adap, 1);
 udelay(adap->mode);

 adap->setmode(adap, 0);
 udelay(adap->mode_setup);
 sendbyte(adap, addr);
 udelay(adap->mode_hold);

 sendbytes(adap, data, len);

 adap->setclk(adap, 1);
 adap->setdat(adap, 1);
 adap->setmode(adap, 0);

 return len;
}
