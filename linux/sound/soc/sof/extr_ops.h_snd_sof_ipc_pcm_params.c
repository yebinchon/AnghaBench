
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sof_ipc_pcm_params_reply {int dummy; } ;
struct snd_sof_dev {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct TYPE_2__ {int (* ipc_pcm_params ) (struct snd_sof_dev*,struct snd_pcm_substream*,struct sof_ipc_pcm_params_reply const*) ;} ;


 TYPE_1__* sof_ops (struct snd_sof_dev*) ;
 int stub1 (struct snd_sof_dev*,struct snd_pcm_substream*,struct sof_ipc_pcm_params_reply const*) ;

__attribute__((used)) static inline int
snd_sof_ipc_pcm_params(struct snd_sof_dev *sdev,
         struct snd_pcm_substream *substream,
         const struct sof_ipc_pcm_params_reply *reply)
{
 return sof_ops(sdev)->ipc_pcm_params(sdev, substream, reply);
}
