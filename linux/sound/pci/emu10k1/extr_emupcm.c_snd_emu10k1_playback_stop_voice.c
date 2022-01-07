
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_emu10k1_voice {unsigned int number; } ;
struct snd_emu10k1 {int dummy; } ;


 int CPF_CURRENTPITCH ;
 int CVCF ;
 int IFATN ;
 int IP ;
 int PTRX_PITCHTARGET ;
 int VTFT ;
 int snd_emu10k1_ptr_write (struct snd_emu10k1*,int ,unsigned int,int) ;
 int snd_emu10k1_voice_intr_disable (struct snd_emu10k1*,unsigned int) ;

__attribute__((used)) static void snd_emu10k1_playback_stop_voice(struct snd_emu10k1 *emu, struct snd_emu10k1_voice *evoice)
{
 unsigned int voice;

 if (evoice == ((void*)0))
  return;
 voice = evoice->number;
 snd_emu10k1_voice_intr_disable(emu, voice);
 snd_emu10k1_ptr_write(emu, PTRX_PITCHTARGET, voice, 0);
 snd_emu10k1_ptr_write(emu, CPF_CURRENTPITCH, voice, 0);
 snd_emu10k1_ptr_write(emu, IFATN, voice, 0xffff);
 snd_emu10k1_ptr_write(emu, VTFT, voice, 0xffff);
 snd_emu10k1_ptr_write(emu, CVCF, voice, 0xffff);
 snd_emu10k1_ptr_write(emu, IP, voice, 0);
}
