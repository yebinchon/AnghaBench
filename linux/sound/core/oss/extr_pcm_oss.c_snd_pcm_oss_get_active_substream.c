
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct snd_pcm_oss_file {struct snd_pcm_substream** streams; } ;
struct TYPE_4__ {scalar_t__ params; } ;
struct TYPE_3__ {TYPE_2__ oss; } ;


 int EIO ;
 int snd_pcm_oss_change_params (struct snd_pcm_substream*,int) ;

__attribute__((used)) static int snd_pcm_oss_get_active_substream(struct snd_pcm_oss_file *pcm_oss_file, struct snd_pcm_substream **r_substream)
{
 int idx, err;
 struct snd_pcm_substream *asubstream = ((void*)0), *substream;

 for (idx = 0; idx < 2; idx++) {
  substream = pcm_oss_file->streams[idx];
  if (substream == ((void*)0))
   continue;
  if (asubstream == ((void*)0))
   asubstream = substream;
  if (substream->runtime->oss.params) {
   err = snd_pcm_oss_change_params(substream, 0);
   if (err < 0)
    return err;
  }
 }
 if (!asubstream)
  return -EIO;
 if (r_substream)
  *r_substream = asubstream;
 return 0;
}
