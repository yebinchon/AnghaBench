
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct emu10k1x_midi {int interrupt; int ipr_rx; int ipr_tx; int port; int rx_enable; int tx_enable; } ;
struct emu10k1x {struct emu10k1x_midi midi; } ;


 int INTE_MIDIRXENABLE ;
 int INTE_MIDITXENABLE ;
 int IPR_MIDIRECVBUFEMPTY ;
 int IPR_MIDITRANSBUFEMPTY ;
 int MUDATA ;
 int emu10k1x_midi_init (struct emu10k1x*,struct emu10k1x_midi*,int ,char*) ;
 int snd_emu10k1x_midi_interrupt ;

__attribute__((used)) static int snd_emu10k1x_midi(struct emu10k1x *emu)
{
 struct emu10k1x_midi *midi = &emu->midi;
 int err;

 if ((err = emu10k1x_midi_init(emu, midi, 0, "EMU10K1X MPU-401 (UART)")) < 0)
  return err;

 midi->tx_enable = INTE_MIDITXENABLE;
 midi->rx_enable = INTE_MIDIRXENABLE;
 midi->port = MUDATA;
 midi->ipr_tx = IPR_MIDITRANSBUFEMPTY;
 midi->ipr_rx = IPR_MIDIRECVBUFEMPTY;
 midi->interrupt = snd_emu10k1x_midi_interrupt;
 return 0;
}
