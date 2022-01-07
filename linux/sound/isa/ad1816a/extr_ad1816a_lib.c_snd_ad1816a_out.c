
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ad1816a {int dummy; } ;


 int AD1816A_REG (unsigned char) ;
 int outb (unsigned char,int ) ;
 int snd_ad1816a_busy_wait (struct snd_ad1816a*) ;

__attribute__((used)) static inline void snd_ad1816a_out(struct snd_ad1816a *chip, unsigned char reg,
       unsigned char value)
{
 snd_ad1816a_busy_wait(chip);
 outb(value, AD1816A_REG(reg));
}
