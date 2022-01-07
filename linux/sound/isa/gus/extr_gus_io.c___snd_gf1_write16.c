
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int reg_data16; int reg_regsel; } ;
struct snd_gus_card {TYPE_1__ gf1; } ;


 int mb () ;
 int outb (unsigned char,int ) ;
 int outw (unsigned short,int ) ;

__attribute__((used)) static inline void __snd_gf1_write16(struct snd_gus_card * gus,
         unsigned char reg, unsigned int data)
{
 outb(reg, gus->gf1.reg_regsel);
 mb();
 outw((unsigned short) data, gus->gf1.reg_data16);
 mb();
}
