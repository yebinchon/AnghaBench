
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {scalar_t__ stream; } ;
struct s3c_i2sv2_info {scalar_t__ regs; } ;
typedef int snd_pcm_sframes_t ;


 scalar_t__ S3C2412_IISFIC ;
 int S3C2412_IISFIC_RXCOUNT (int ) ;
 int S3C2412_IISFIC_TXCOUNT (int ) ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int readl (scalar_t__) ;
 struct s3c_i2sv2_info* to_info (struct snd_soc_dai*) ;

__attribute__((used)) static snd_pcm_sframes_t s3c2412_i2s_delay(struct snd_pcm_substream *substream,
        struct snd_soc_dai *dai)
{
 struct s3c_i2sv2_info *i2s = to_info(dai);
 u32 reg = readl(i2s->regs + S3C2412_IISFIC);
 snd_pcm_sframes_t delay;

 if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
  delay = S3C2412_IISFIC_TXCOUNT(reg);
 else
  delay = S3C2412_IISFIC_RXCOUNT(reg);

 return delay;
}
