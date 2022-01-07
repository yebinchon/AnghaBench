
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct TYPE_6__ {char channels_max; int rate_max; int rates; } ;
struct snd_pcm_runtime {int private_free; struct audiopipe* private_data; TYPE_3__ hw; } ;
struct snd_pcm_hardware {int dummy; } ;
struct echoaudio {scalar_t__ digital_mode; TYPE_1__* card; int pci; } ;
struct TYPE_5__ {char* list; int count; scalar_t__ mask; } ;
struct audiopipe {int index; int sgpage; TYPE_2__ constr; TYPE_3__ hw; } ;
struct TYPE_4__ {int dev; } ;


 scalar_t__ DIGITAL_MODE_ADAT ;
 int EAGAIN ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 int SNDRV_DMA_TYPE_DEV ;
 int SNDRV_PCM_HW_PARAM_BUFFER_SIZE ;
 int SNDRV_PCM_HW_PARAM_CHANNELS ;
 int SNDRV_PCM_HW_PARAM_PERIODS ;
 int SNDRV_PCM_HW_PARAM_PERIOD_SIZE ;
 int SNDRV_PCM_HW_PARAM_RATE ;
 int SNDRV_PCM_RATE_8000_48000 ;
 int audiopipe_free ;
 char* channels_list ;
 int dev_dbg (int ,char*,char) ;
 int dev_err (int ,char*) ;
 int hw_rule_sample_rate ;
 struct audiopipe* kzalloc (int,int ) ;
 int memcpy (TYPE_3__*,int *,int) ;
 int pcm_hardware_skel ;
 int snd_dma_alloc_pages (int ,int ,int ,int *) ;
 int snd_dma_pci_data (int ) ;
 int snd_pcm_hw_constraint_integer (struct snd_pcm_runtime*,int ) ;
 int snd_pcm_hw_constraint_list (struct snd_pcm_runtime*,int ,int ,TYPE_2__*) ;
 int snd_pcm_hw_constraint_step (struct snd_pcm_runtime*,int ,int ,int) ;
 int snd_pcm_hw_rule_add (struct snd_pcm_runtime*,int ,int ,int ,struct echoaudio*,int ,int) ;
 int snd_pcm_set_sync (struct snd_pcm_substream*) ;
 struct echoaudio* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int pcm_open(struct snd_pcm_substream *substream,
      signed char max_channels)
{
 struct echoaudio *chip;
 struct snd_pcm_runtime *runtime;
 struct audiopipe *pipe;
 int err, i;

 if (max_channels <= 0)
  return -EAGAIN;

 chip = snd_pcm_substream_chip(substream);
 runtime = substream->runtime;

 pipe = kzalloc(sizeof(struct audiopipe), GFP_KERNEL);
 if (!pipe)
  return -ENOMEM;
 pipe->index = -1;


 memcpy(&pipe->hw, &pcm_hardware_skel, sizeof(struct snd_pcm_hardware));
 dev_dbg(chip->card->dev, "max_channels=%d\n", max_channels);
 pipe->constr.list = channels_list;
 pipe->constr.mask = 0;
 for (i = 0; channels_list[i] <= max_channels; i++);
 pipe->constr.count = i;
 if (pipe->hw.channels_max > max_channels)
  pipe->hw.channels_max = max_channels;
 if (chip->digital_mode == DIGITAL_MODE_ADAT) {
  pipe->hw.rate_max = 48000;
  pipe->hw.rates &= SNDRV_PCM_RATE_8000_48000;
 }

 runtime->hw = pipe->hw;
 runtime->private_data = pipe;
 runtime->private_free = audiopipe_free;
 snd_pcm_set_sync(substream);


 if ((err = snd_pcm_hw_constraint_list(runtime, 0,
           SNDRV_PCM_HW_PARAM_CHANNELS,
           &pipe->constr)) < 0)
  return err;


 if ((err = snd_pcm_hw_constraint_integer(runtime,
       SNDRV_PCM_HW_PARAM_PERIODS)) < 0)
  return err;




 if ((err = snd_pcm_hw_constraint_step(runtime, 0,
           SNDRV_PCM_HW_PARAM_PERIOD_SIZE,
           32)) < 0)
  return err;
 if ((err = snd_pcm_hw_constraint_step(runtime, 0,
           SNDRV_PCM_HW_PARAM_BUFFER_SIZE,
           32)) < 0)
  return err;

 if ((err = snd_pcm_hw_rule_add(substream->runtime, 0,
           SNDRV_PCM_HW_PARAM_RATE,
     hw_rule_sample_rate, chip,
           SNDRV_PCM_HW_PARAM_RATE, -1)) < 0)
  return err;


 if ((err = snd_dma_alloc_pages(SNDRV_DMA_TYPE_DEV,
           snd_dma_pci_data(chip->pci),
           PAGE_SIZE, &pipe->sgpage)) < 0) {
  dev_err(chip->card->dev, "s-g list allocation failed\n");
  return err;
 }

 return 0;
}
