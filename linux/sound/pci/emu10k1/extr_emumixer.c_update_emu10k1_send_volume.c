
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_emu10k1 {scalar_t__ audigy; } ;


 int A_SENDAMOUNTS ;
 int DSL_FXSENDAMOUNT_D ;
 int PSST_FXSENDAMOUNT_C ;
 int PTRX_FXSENDAMOUNT_A ;
 int PTRX_FXSENDAMOUNT_B ;
 int snd_emu10k1_ptr_write (struct snd_emu10k1*,int ,int,unsigned int) ;

__attribute__((used)) static void update_emu10k1_send_volume(struct snd_emu10k1 *emu, int voice, unsigned char *volume)
{
 snd_emu10k1_ptr_write(emu, PTRX_FXSENDAMOUNT_A, voice, volume[0]);
 snd_emu10k1_ptr_write(emu, PTRX_FXSENDAMOUNT_B, voice, volume[1]);
 snd_emu10k1_ptr_write(emu, PSST_FXSENDAMOUNT_C, voice, volume[2]);
 snd_emu10k1_ptr_write(emu, DSL_FXSENDAMOUNT_D, voice, volume[3]);
 if (emu->audigy) {
  unsigned int val = ((unsigned int)volume[4] << 24) |
   ((unsigned int)volume[5] << 16) |
   ((unsigned int)volume[6] << 8) |
   (unsigned int)volume[7];
  snd_emu10k1_ptr_write(emu, A_SENDAMOUNTS, voice, val);
 }
}
