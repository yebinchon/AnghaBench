
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sonicvibes {int dummy; } ;


 int DATA ;
 int INDEX ;
 int SV_REG (struct sonicvibes*,int ) ;
 int outb (unsigned char,int ) ;
 int udelay (int) ;

__attribute__((used)) static void snd_sonicvibes_out1(struct sonicvibes * sonic,
    unsigned char reg,
    unsigned char value)
{
 outb(reg, SV_REG(sonic, INDEX));
 udelay(10);
 outb(value, SV_REG(sonic, DATA));
 udelay(10);
}
