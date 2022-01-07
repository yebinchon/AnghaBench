
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct snd_azf3328_codec_data {int name; scalar_t__ substream; int lock; } ;
struct snd_azf3328 {TYPE_1__* card; } ;
typedef enum snd_azf3328_codec_type { ____Placeholder_snd_azf3328_codec_type } snd_azf3328_codec_type ;
struct TYPE_2__ {int dev; } ;


 int AZF_CODEC_I2S_OUT ;
 int AZF_CODEC_PLAYBACK ;
 int IDX_IO_CODEC_DMA_CURRPOS ;
 int IDX_IO_CODEC_IRQTYPE ;
 int IRQ_SOMETHING ;
 int dev_dbg (int ,char*,int ,int,int ) ;
 int dev_warn (int ,char*) ;
 int snd_azf3328_codec_inb (struct snd_azf3328_codec_data const*,int ) ;
 int snd_azf3328_codec_inl (struct snd_azf3328_codec_data const*,int ) ;
 int snd_azf3328_codec_outb (struct snd_azf3328_codec_data const*,int ,int) ;
 int snd_azf3328_irq_log_unknown_type (struct snd_azf3328*,int) ;
 int snd_pcm_period_elapsed (scalar_t__) ;
 int spin_lock (int ) ;
 int spin_unlock (int ) ;

__attribute__((used)) static inline void
snd_azf3328_pcm_interrupt(struct snd_azf3328 *chip,
     const struct snd_azf3328_codec_data *first_codec,
     u8 status
)
{
 u8 which;
 enum snd_azf3328_codec_type codec_type;
 const struct snd_azf3328_codec_data *codec = first_codec;

 for (codec_type = AZF_CODEC_PLAYBACK;
   codec_type <= AZF_CODEC_I2S_OUT;
    ++codec_type, ++codec) {


  if (!(status & (1 << codec_type)))
   continue;

  spin_lock(codec->lock);
  which = snd_azf3328_codec_inb(codec, IDX_IO_CODEC_IRQTYPE);

  snd_azf3328_codec_outb(codec, IDX_IO_CODEC_IRQTYPE, which);
  spin_unlock(codec->lock);

  if (codec->substream) {
   snd_pcm_period_elapsed(codec->substream);
   dev_dbg(chip->card->dev, "%s period done (#%x), @ %x\n",
    codec->name,
    which,
    snd_azf3328_codec_inl(
     codec, IDX_IO_CODEC_DMA_CURRPOS));
  } else
   dev_warn(chip->card->dev, "irq handler problem!\n");
  if (which & IRQ_SOMETHING)
   snd_azf3328_irq_log_unknown_type(chip, which);
 }
}
