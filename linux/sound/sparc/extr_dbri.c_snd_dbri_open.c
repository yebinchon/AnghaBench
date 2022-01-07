
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int hw; } ;
struct snd_dbri {int lock; } ;
struct dbri_streaminfo {int pipe; scalar_t__ dvma_buffer; scalar_t__ offset; struct snd_pcm_substream* substream; } ;


 struct dbri_streaminfo* DBRI_STREAM (struct snd_dbri*,struct snd_pcm_substream*) ;
 int D_USR ;
 int SNDRV_PCM_HW_PARAM_CHANNELS ;
 int SNDRV_PCM_HW_PARAM_FORMAT ;
 int cs4215_open (struct snd_dbri*) ;
 int dprintk (int ,char*) ;
 int snd_dbri_pcm_hw ;
 int snd_hw_rule_channels ;
 int snd_hw_rule_format ;
 int snd_pcm_hw_rule_add (struct snd_pcm_runtime*,int ,int ,int ,int *,int ,int) ;
 struct snd_dbri* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int snd_dbri_open(struct snd_pcm_substream *substream)
{
 struct snd_dbri *dbri = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct dbri_streaminfo *info = DBRI_STREAM(dbri, substream);
 unsigned long flags;

 dprintk(D_USR, "open audio output.\n");
 runtime->hw = snd_dbri_pcm_hw;

 spin_lock_irqsave(&dbri->lock, flags);
 info->substream = substream;
 info->offset = 0;
 info->dvma_buffer = 0;
 info->pipe = -1;
 spin_unlock_irqrestore(&dbri->lock, flags);

 snd_pcm_hw_rule_add(runtime, 0, SNDRV_PCM_HW_PARAM_CHANNELS,
       snd_hw_rule_format, ((void*)0), SNDRV_PCM_HW_PARAM_FORMAT,
       -1);
 snd_pcm_hw_rule_add(runtime, 0, SNDRV_PCM_HW_PARAM_FORMAT,
       snd_hw_rule_channels, ((void*)0),
       SNDRV_PCM_HW_PARAM_CHANNELS,
       -1);

 cs4215_open(dbri);

 return 0;
}
