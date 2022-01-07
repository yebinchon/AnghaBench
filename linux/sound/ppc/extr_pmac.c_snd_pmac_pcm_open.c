
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pmac {int num_freqs; int freqs_ok; int can_duplex; scalar_t__ can_capture; int formats_ok; int * freq_table; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct TYPE_3__ {scalar_t__ periods_max; int info; int formats; int rate_min; int rate_max; int rates; } ;
struct snd_pcm_runtime {TYPE_1__ hw; struct pmac_stream* private_data; } ;
struct TYPE_4__ {scalar_t__ size; } ;
struct pmac_stream {TYPE_2__ cmd; int stream; struct snd_pcm_substream* substream; } ;


 int SNDRV_PCM_HW_PARAM_FORMAT ;
 int SNDRV_PCM_HW_PARAM_PERIODS ;
 int SNDRV_PCM_HW_PARAM_RATE ;
 int SNDRV_PCM_INFO_HALF_DUPLEX ;
 int SNDRV_PCM_INFO_JOINT_DUPLEX ;
 int snd_pcm_hw_constraint_integer (struct snd_pcm_runtime*,int ) ;
 int snd_pcm_hw_rule_add (struct snd_pcm_runtime*,int ,int ,int ,struct snd_pmac*,int ,int) ;
 int snd_pcm_rate_to_rate_bit (int ) ;
 int snd_pmac_hw_rule_format ;
 int snd_pmac_hw_rule_rate ;

__attribute__((used)) static int snd_pmac_pcm_open(struct snd_pmac *chip, struct pmac_stream *rec,
        struct snd_pcm_substream *subs)
{
 struct snd_pcm_runtime *runtime = subs->runtime;
 int i;


 runtime->hw.rates = 0;
 for (i = 0; i < chip->num_freqs; i++)
  if (chip->freqs_ok & (1 << i))
   runtime->hw.rates |=
    snd_pcm_rate_to_rate_bit(chip->freq_table[i]);


 for (i = 0; i < chip->num_freqs; i++) {
  if (chip->freqs_ok & (1 << i)) {
   runtime->hw.rate_max = chip->freq_table[i];
   break;
  }
 }
 for (i = chip->num_freqs - 1; i >= 0; i--) {
  if (chip->freqs_ok & (1 << i)) {
   runtime->hw.rate_min = chip->freq_table[i];
   break;
  }
 }
 runtime->hw.formats = chip->formats_ok;
 if (chip->can_capture) {
  if (! chip->can_duplex)
   runtime->hw.info |= SNDRV_PCM_INFO_HALF_DUPLEX;
  runtime->hw.info |= SNDRV_PCM_INFO_JOINT_DUPLEX;
 }
 runtime->private_data = rec;
 rec->substream = subs;
 runtime->hw.periods_max = rec->cmd.size - 1;


 snd_pcm_hw_constraint_integer(runtime, SNDRV_PCM_HW_PARAM_PERIODS);
 return 0;
}
