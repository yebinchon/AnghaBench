
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_sof_dev {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
typedef int snd_pcm_uframes_t ;
struct TYPE_2__ {int (* pcm_pointer ) (struct snd_sof_dev*,struct snd_pcm_substream*) ;} ;


 TYPE_1__* sof_ops (struct snd_sof_dev*) ;
 int stub1 (struct snd_sof_dev*,struct snd_pcm_substream*) ;

__attribute__((used)) static inline snd_pcm_uframes_t
snd_sof_pcm_platform_pointer(struct snd_sof_dev *sdev,
        struct snd_pcm_substream *substream)
{
 if (sof_ops(sdev) && sof_ops(sdev)->pcm_pointer)
  return sof_ops(sdev)->pcm_pointer(sdev, substream);

 return 0;
}
