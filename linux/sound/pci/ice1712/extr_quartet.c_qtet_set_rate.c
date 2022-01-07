
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {int dummy; } ;


 unsigned int CPLD_CKS_MASK ;
 unsigned int CPLD_SYNC_SEL ;
 int ICEMT1724 (struct snd_ice1712*,int ) ;
 int RATE ;
 unsigned char VT1724_SPDIF_MASTER ;
 unsigned int get_cks_val (unsigned int) ;
 unsigned int get_cpld (struct snd_ice1712*) ;
 unsigned char inb (int ) ;
 int outb (unsigned char,int ) ;
 int set_cpld (struct snd_ice1712*,unsigned int) ;

__attribute__((used)) static void qtet_set_rate(struct snd_ice1712 *ice, unsigned int rate)
{
 unsigned int new;
 unsigned char val;

 val = inb(ICEMT1724(ice, RATE));
 outb(val | VT1724_SPDIF_MASTER, ICEMT1724(ice, RATE));

 new = (get_cpld(ice) & ~CPLD_CKS_MASK) | get_cks_val(rate);

 new &= ~CPLD_SYNC_SEL;


 set_cpld(ice, new);
}
