
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_gus_card {int dummy; } ;


 int DRAM ;
 int GUSP (struct snd_gus_card*,int ) ;
 int inb (int ) ;
 int mb () ;

void snd_gf1_delay(struct snd_gus_card * gus)
{
 int i;

 for (i = 0; i < 6; i++) {
  mb();
  inb(GUSP(gus, DRAM));
 }
}
