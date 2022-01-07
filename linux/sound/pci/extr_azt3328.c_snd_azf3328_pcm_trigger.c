
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int dma_addr; int channels; int format; int rate; struct snd_azf3328_codec_data* private_data; } ;
struct snd_azf3328_codec_data {scalar_t__ type; int name; int lock; int running; } ;
struct snd_azf3328 {TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ AZF_CODEC_PLAYBACK ;
 int DMA_EPILOGUE_SOMETHING ;
 int DMA_RESUME ;
 int DMA_RUN_SOMETHING1 ;
 int DMA_RUN_SOMETHING2 ;
 int DMA_SOMETHING_ELSE ;
 int EINVAL ;
 int IDX_IO_CODEC_DMA_FLAGS ;
 int IDX_IO_CODEC_IRQTYPE ;






 int SOMETHING_ALMOST_ALWAYS_SET ;
 int WARN (int,char*) ;
 int dev_dbg (int ,char*,int ) ;
 int snd_azf3328_codec_inw (struct snd_azf3328_codec_data*,int ) ;
 int snd_azf3328_codec_outw (struct snd_azf3328_codec_data*,int ,int) ;
 int snd_azf3328_codec_setdmaa (struct snd_azf3328*,struct snd_azf3328_codec_data*,int ,int ,int ) ;
 int snd_azf3328_codec_setfmt (struct snd_azf3328_codec_data*,int ,int ,int ) ;
 int snd_azf3328_ctrl_codec_activity (struct snd_azf3328*,scalar_t__,int) ;
 int snd_azf3328_mixer_mute_control_pcm (struct snd_azf3328*,int) ;
 int snd_pcm_format_width (int ) ;
 int snd_pcm_lib_buffer_bytes (struct snd_pcm_substream*) ;
 int snd_pcm_lib_period_bytes (struct snd_pcm_substream*) ;
 struct snd_azf3328* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock (int ) ;
 int spin_unlock (int ) ;

__attribute__((used)) static int
snd_azf3328_pcm_trigger(struct snd_pcm_substream *substream, int cmd)
{
 struct snd_azf3328 *chip = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct snd_azf3328_codec_data *codec = runtime->private_data;
 int result = 0;
 u16 flags1;
 bool previously_muted = 0;
 bool is_main_mixer_playback_codec = (AZF_CODEC_PLAYBACK == codec->type);

 switch (cmd) {
 case 130:
  dev_dbg(chip->card->dev, "START PCM %s\n", codec->name);

  if (is_main_mixer_playback_codec) {

   previously_muted =
    snd_azf3328_mixer_mute_control_pcm(
      chip, 1
    );
  }

  snd_azf3328_codec_setfmt(codec,
   runtime->rate,
   snd_pcm_format_width(runtime->format),
   runtime->channels);

  spin_lock(codec->lock);

  flags1 = snd_azf3328_codec_inw(codec, IDX_IO_CODEC_DMA_FLAGS);


  flags1 &= ~DMA_RESUME;
  snd_azf3328_codec_outw(codec, IDX_IO_CODEC_DMA_FLAGS, flags1);


  snd_azf3328_codec_outw(codec, IDX_IO_CODEC_IRQTYPE, 0xffff);
  spin_unlock(codec->lock);

  snd_azf3328_codec_setdmaa(chip, codec, runtime->dma_addr,
   snd_pcm_lib_period_bytes(substream),
   snd_pcm_lib_buffer_bytes(substream)
  );

  spin_lock(codec->lock);
  snd_azf3328_codec_outw(codec, IDX_IO_CODEC_DMA_FLAGS,
   0x0000);
  snd_azf3328_codec_outw(codec, IDX_IO_CODEC_DMA_FLAGS,
   DMA_RUN_SOMETHING1);
  snd_azf3328_codec_outw(codec, IDX_IO_CODEC_DMA_FLAGS,
   DMA_RUN_SOMETHING1 |
   DMA_RUN_SOMETHING2);
  snd_azf3328_codec_outw(codec, IDX_IO_CODEC_DMA_FLAGS,
   DMA_RESUME |
   SOMETHING_ALMOST_ALWAYS_SET |
   DMA_EPILOGUE_SOMETHING |
   DMA_SOMETHING_ELSE);

  spin_unlock(codec->lock);
  snd_azf3328_ctrl_codec_activity(chip, codec->type, 1);

  if (is_main_mixer_playback_codec) {

   if (!previously_muted)
    snd_azf3328_mixer_mute_control_pcm(
      chip, 0
    );
  }

  dev_dbg(chip->card->dev, "PCM STARTED %s\n", codec->name);
  break;
 case 131:
  dev_dbg(chip->card->dev, "PCM RESUME %s\n", codec->name);

  spin_lock(codec->lock);
  if (codec->running)
   snd_azf3328_codec_outw(codec, IDX_IO_CODEC_DMA_FLAGS,
    snd_azf3328_codec_inw(
     codec, IDX_IO_CODEC_DMA_FLAGS
    ) | DMA_RESUME
   );
  spin_unlock(codec->lock);
  break;
 case 129:
  dev_dbg(chip->card->dev, "PCM STOP %s\n", codec->name);

  if (is_main_mixer_playback_codec) {

   previously_muted =
    snd_azf3328_mixer_mute_control_pcm(
      chip, 1
    );
  }

  spin_lock(codec->lock);

  flags1 = snd_azf3328_codec_inw(codec, IDX_IO_CODEC_DMA_FLAGS);


  flags1 &= ~DMA_RESUME;
  snd_azf3328_codec_outw(codec, IDX_IO_CODEC_DMA_FLAGS, flags1);



  flags1 |= DMA_RUN_SOMETHING1;
  snd_azf3328_codec_outw(codec, IDX_IO_CODEC_DMA_FLAGS, flags1);

  flags1 &= ~DMA_RUN_SOMETHING1;
  snd_azf3328_codec_outw(codec, IDX_IO_CODEC_DMA_FLAGS, flags1);
  spin_unlock(codec->lock);
  snd_azf3328_ctrl_codec_activity(chip, codec->type, 0);

  if (is_main_mixer_playback_codec) {

   if (!previously_muted)
    snd_azf3328_mixer_mute_control_pcm(
      chip, 0
    );
  }

  dev_dbg(chip->card->dev, "PCM STOPPED %s\n", codec->name);
  break;
 case 128:
  dev_dbg(chip->card->dev, "PCM SUSPEND %s\n", codec->name);

  snd_azf3328_codec_outw(codec, IDX_IO_CODEC_DMA_FLAGS,
   snd_azf3328_codec_inw(
    codec, IDX_IO_CODEC_DMA_FLAGS
   ) & ~DMA_RESUME
  );
  break;
        case 133:
  WARN(1, "FIXME: SNDRV_PCM_TRIGGER_PAUSE_PUSH NIY!\n");
                break;
        case 132:
  WARN(1, "FIXME: SNDRV_PCM_TRIGGER_PAUSE_RELEASE NIY!\n");
                break;
        default:
  WARN(1, "FIXME: unknown trigger mode!\n");
                return -EINVAL;
 }

 return result;
}
