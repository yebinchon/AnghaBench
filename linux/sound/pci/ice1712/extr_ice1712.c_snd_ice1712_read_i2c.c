
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {int dummy; } ;


 int I2C_BYTE_ADDR ;
 int I2C_CTRL ;
 int I2C_DATA ;
 int I2C_DEV_ADDR ;
 unsigned char ICE1712_I2C_BUSY ;
 unsigned char ICE1712_I2C_WRITE ;
 int ICEREG (struct snd_ice1712*,int ) ;
 unsigned char inb (int ) ;
 int outb (unsigned char,int ) ;

__attribute__((used)) static unsigned char snd_ice1712_read_i2c(struct snd_ice1712 *ice,
       unsigned char dev,
       unsigned char addr)
{
 long t = 0x10000;

 outb(addr, ICEREG(ice, I2C_BYTE_ADDR));
 outb(dev & ~ICE1712_I2C_WRITE, ICEREG(ice, I2C_DEV_ADDR));
 while (t-- > 0 && (inb(ICEREG(ice, I2C_CTRL)) & ICE1712_I2C_BUSY)) ;
 return inb(ICEREG(ice, I2C_DATA));
}
