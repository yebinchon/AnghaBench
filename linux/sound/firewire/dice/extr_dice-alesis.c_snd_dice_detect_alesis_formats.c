
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_dice {int** rx_pcm_chs; int* tx_midi_ports; int* rx_midi_ports; int tx_pcm_chs; } ;
typedef int reg ;
typedef int __be32 ;


 int MAX_STREAMS ;
 int SND_DICE_RATE_MODE_COUNT ;
 int TX_NUMBER_AUDIO ;
 int alesis_io14_tx_pcm_chs ;
 int alesis_io26_tx_pcm_chs ;
 int be32_to_cpu (int ) ;
 int memcpy (int ,int ,int) ;
 int snd_dice_transaction_read_tx (struct snd_dice*,int ,int *,int) ;

int snd_dice_detect_alesis_formats(struct snd_dice *dice)
{
 __be32 reg;
 u32 data;
 int i;
 int err;

 err = snd_dice_transaction_read_tx(dice, TX_NUMBER_AUDIO, &reg,
        sizeof(reg));
 if (err < 0)
  return err;
 data = be32_to_cpu(reg);

 if (data == 4 || data == 6) {
  memcpy(dice->tx_pcm_chs, alesis_io14_tx_pcm_chs,
    MAX_STREAMS * SND_DICE_RATE_MODE_COUNT *
    sizeof(unsigned int));
 } else {
  memcpy(dice->tx_pcm_chs, alesis_io26_tx_pcm_chs,
    MAX_STREAMS * SND_DICE_RATE_MODE_COUNT *
    sizeof(unsigned int));
 }

 for (i = 0; i < SND_DICE_RATE_MODE_COUNT; ++i)
  dice->rx_pcm_chs[0][i] = 8;

 dice->tx_midi_ports[0] = 1;
 dice->rx_midi_ports[0] = 1;

 return 0;
}
