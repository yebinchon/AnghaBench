
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sof_ipc_pcm_params_reply {int dummy; } ;
struct snd_sof_dev {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;



__attribute__((used)) static int imx8_ipc_pcm_params(struct snd_sof_dev *sdev,
          struct snd_pcm_substream *substream,
          const struct sof_ipc_pcm_params_reply *reply)
{
 return 0;
}
