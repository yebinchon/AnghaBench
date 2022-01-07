
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_emu10k1_midi {int interrupt; int ipr_rx; int ipr_tx; int port; int rx_enable; int tx_enable; } ;
struct snd_emu10k1 {struct snd_emu10k1_midi midi2; struct snd_emu10k1_midi midi; } ;


 int A_MUDATA1 ;
 int A_MUDATA2 ;
 int INTE_A_MIDIRXENABLE2 ;
 int INTE_A_MIDITXENABLE2 ;
 int INTE_MIDIRXENABLE ;
 int INTE_MIDITXENABLE ;
 int IPR_A_MIDIRECVBUFEMPTY2 ;
 int IPR_A_MIDITRANSBUFEMPTY2 ;
 int IPR_MIDIRECVBUFEMPTY ;
 int IPR_MIDITRANSBUFEMPTY ;
 int emu10k1_midi_init (struct snd_emu10k1*,struct snd_emu10k1_midi*,int,char*) ;
 int snd_emu10k1_midi_interrupt ;
 int snd_emu10k1_midi_interrupt2 ;

int snd_emu10k1_audigy_midi(struct snd_emu10k1 *emu)
{
 struct snd_emu10k1_midi *midi;
 int err;

 midi = &emu->midi;
 if ((err = emu10k1_midi_init(emu, midi, 0, "Audigy MPU-401 (UART)")) < 0)
  return err;

 midi->tx_enable = INTE_MIDITXENABLE;
 midi->rx_enable = INTE_MIDIRXENABLE;
 midi->port = A_MUDATA1;
 midi->ipr_tx = IPR_MIDITRANSBUFEMPTY;
 midi->ipr_rx = IPR_MIDIRECVBUFEMPTY;
 midi->interrupt = snd_emu10k1_midi_interrupt;

 midi = &emu->midi2;
 if ((err = emu10k1_midi_init(emu, midi, 1, "Audigy MPU-401 #2")) < 0)
  return err;

 midi->tx_enable = INTE_A_MIDITXENABLE2;
 midi->rx_enable = INTE_A_MIDIRXENABLE2;
 midi->port = A_MUDATA2;
 midi->ipr_tx = IPR_A_MIDITRANSBUFEMPTY2;
 midi->ipr_rx = IPR_A_MIDIRECVBUFEMPTY2;
 midi->interrupt = snd_emu10k1_midi_interrupt2;
 return 0;
}
