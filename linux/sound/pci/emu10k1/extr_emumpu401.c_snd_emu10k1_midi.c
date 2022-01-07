
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_emu10k1_midi {int interrupt; int ipr_rx; int ipr_tx; int port; int rx_enable; int tx_enable; } ;
struct snd_emu10k1 {struct snd_emu10k1_midi midi; } ;


 int INTE_MIDIRXENABLE ;
 int INTE_MIDITXENABLE ;
 int IPR_MIDIRECVBUFEMPTY ;
 int IPR_MIDITRANSBUFEMPTY ;
 int MUDATA ;
 int emu10k1_midi_init (struct snd_emu10k1*,struct snd_emu10k1_midi*,int ,char*) ;
 int snd_emu10k1_midi_interrupt ;

int snd_emu10k1_midi(struct snd_emu10k1 *emu)
{
 struct snd_emu10k1_midi *midi = &emu->midi;
 int err;

 if ((err = emu10k1_midi_init(emu, midi, 0, "EMU10K1 MPU-401 (UART)")) < 0)
  return err;

 midi->tx_enable = INTE_MIDITXENABLE;
 midi->rx_enable = INTE_MIDIRXENABLE;
 midi->port = MUDATA;
 midi->ipr_tx = IPR_MIDITRANSBUFEMPTY;
 midi->ipr_rx = IPR_MIDIRECVBUFEMPTY;
 midi->interrupt = snd_emu10k1_midi_interrupt;
 return 0;
}
