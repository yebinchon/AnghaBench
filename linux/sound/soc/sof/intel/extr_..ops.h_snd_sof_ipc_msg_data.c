
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_sof_dev {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct TYPE_2__ {int (* ipc_msg_data ) (struct snd_sof_dev*,struct snd_pcm_substream*,void*,size_t) ;} ;


 TYPE_1__* sof_ops (struct snd_sof_dev*) ;
 int stub1 (struct snd_sof_dev*,struct snd_pcm_substream*,void*,size_t) ;

__attribute__((used)) static inline void snd_sof_ipc_msg_data(struct snd_sof_dev *sdev,
     struct snd_pcm_substream *substream,
     void *p, size_t sz)
{
 sof_ops(sdev)->ipc_msg_data(sdev, substream, p, sz);
}
