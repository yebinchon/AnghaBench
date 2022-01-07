
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timespec {int dummy; } ;
struct snd_pcm_substream {int pcm; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {scalar_t__ tstamp_mode; TYPE_1__* status; } ;
typedef int name ;
struct TYPE_2__ {int tstamp; } ;


 int SNDRV_PCM_STATE_XRUN ;
 scalar_t__ SNDRV_PCM_TSTAMP_ENABLE ;
 int XRUN_DEBUG_BASIC ;
 int dump_stack_on_xrun (struct snd_pcm_substream*) ;
 int pcm_warn (int ,char*,char*) ;
 int snd_pcm_debug_name (struct snd_pcm_substream*,char*,int) ;
 int snd_pcm_gettime (struct snd_pcm_runtime*,struct timespec*) ;
 int snd_pcm_stop (struct snd_pcm_substream*,int ) ;
 int trace_xrun (struct snd_pcm_substream*) ;
 scalar_t__ xrun_debug (struct snd_pcm_substream*,int ) ;

void __snd_pcm_xrun(struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime = substream->runtime;

 trace_xrun(substream);
 if (runtime->tstamp_mode == SNDRV_PCM_TSTAMP_ENABLE)
  snd_pcm_gettime(runtime, (struct timespec *)&runtime->status->tstamp);
 snd_pcm_stop(substream, SNDRV_PCM_STATE_XRUN);
 if (xrun_debug(substream, XRUN_DEBUG_BASIC)) {
  char name[16];
  snd_pcm_debug_name(substream, name, sizeof(name));
  pcm_warn(substream->pcm, "XRUN: %s\n", name);
  dump_stack_on_xrun(substream);
 }
}
