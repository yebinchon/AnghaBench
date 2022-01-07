
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {int dummy; } ;


 unsigned int CPLD_CKS_MASK ;
 unsigned int CPLD_EXT_SPDIF ;
 unsigned int CPLD_EXT_WORDCLOCK_1FS ;
 unsigned int CPLD_EXT_WORDCLOCK_256FS ;
 unsigned int CPLD_WORD_SEL ;



 unsigned int get_cpld (struct snd_ice1712*) ;
 int set_cpld (struct snd_ice1712*,unsigned int) ;
 int snd_BUG () ;

__attribute__((used)) static int qtet_set_spdif_clock(struct snd_ice1712 *ice, int type)
{
 unsigned int old, new;

 old = new = get_cpld(ice);
 new &= ~(CPLD_CKS_MASK | CPLD_WORD_SEL);
 switch (type) {
 case 130:
  new |= CPLD_EXT_SPDIF;
  break;
 case 129:
  new |= CPLD_EXT_WORDCLOCK_1FS;
  break;
 case 128:
  new |= CPLD_EXT_WORDCLOCK_256FS;
  break;
 default:
  snd_BUG();
 }
 if (old != new) {
  set_cpld(ice, new);

  return 1;
 }
 return 0;
}
