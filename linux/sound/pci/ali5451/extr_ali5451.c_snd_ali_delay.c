
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ali {int dummy; } ;


 int ALI_REG (struct snd_ali*,int ) ;
 int ALI_STIMER ;
 int cpu_relax () ;
 unsigned long inl (int ) ;
 scalar_t__ snd_ali_stimer_ready (struct snd_ali*) ;

__attribute__((used)) static void snd_ali_delay(struct snd_ali *codec,int interval)
{
 unsigned long begintimer,currenttimer;

 begintimer = inl(ALI_REG(codec, ALI_STIMER));
 currenttimer = inl(ALI_REG(codec, ALI_STIMER));

 while (currenttimer < begintimer + interval) {
  if (snd_ali_stimer_ready(codec) < 0)
   break;
  currenttimer = inl(ALI_REG(codec, ALI_STIMER));
  cpu_relax();
 }
}
