
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_2__* runtime; struct snd_dice* private_data; } ;
struct snd_dice {int * rx_stream; int * tx_stream; } ;
struct TYPE_3__ {unsigned int rate_min; unsigned int rate_max; } ;
struct TYPE_4__ {TYPE_1__ hw; } ;
 scalar_t__ amdtp_stream_pcm_running (int *) ;
 int init_hw_info (struct snd_dice*,struct snd_pcm_substream*) ;
 int snd_dice_stream_lock_release (struct snd_dice*) ;
 int snd_dice_stream_lock_try (struct snd_dice*) ;
 int snd_dice_transaction_get_clock_source (struct snd_dice*,unsigned int*) ;
 int snd_dice_transaction_get_rate (struct snd_dice*,unsigned int*) ;
 int snd_pcm_set_sync (struct snd_pcm_substream*) ;

__attribute__((used)) static int pcm_open(struct snd_pcm_substream *substream)
{
 struct snd_dice *dice = substream->private_data;
 unsigned int source;
 bool internal;
 int err;

 err = snd_dice_stream_lock_try(dice);
 if (err < 0)
  goto end;

 err = init_hw_info(dice, substream);
 if (err < 0)
  goto err_locked;

 err = snd_dice_transaction_get_clock_source(dice, &source);
 if (err < 0)
  goto err_locked;
 switch (source) {
 case 134:
 case 133:
 case 132:
 case 131:
 case 130:
 case 135:
 case 129:
 case 128:
  internal = 0;
  break;
 default:
  internal = 1;
  break;
 }





 if (!internal ||
     amdtp_stream_pcm_running(&dice->tx_stream[0]) ||
     amdtp_stream_pcm_running(&dice->tx_stream[1]) ||
     amdtp_stream_pcm_running(&dice->rx_stream[0]) ||
     amdtp_stream_pcm_running(&dice->rx_stream[1])) {
  unsigned int rate;

  err = snd_dice_transaction_get_rate(dice, &rate);
  if (err < 0)
   goto err_locked;
  substream->runtime->hw.rate_min = rate;
  substream->runtime->hw.rate_max = rate;
 }

 snd_pcm_set_sync(substream);
end:
 return err;
err_locked:
 snd_dice_stream_lock_release(dice);
 return err;
}
