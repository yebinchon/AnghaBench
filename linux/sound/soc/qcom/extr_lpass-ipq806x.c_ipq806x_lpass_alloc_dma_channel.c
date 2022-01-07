
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpass_data {int dummy; } ;


 int EINVAL ;
 int IPQ806X_LPAIF_RDMA_CHAN_MI2S ;
 int SNDRV_PCM_STREAM_PLAYBACK ;

__attribute__((used)) static int ipq806x_lpass_alloc_dma_channel(struct lpass_data *drvdata, int dir)
{
 if (dir == SNDRV_PCM_STREAM_PLAYBACK)
  return IPQ806X_LPAIF_RDMA_CHAN_MI2S;
 else
  return -EINVAL;
}
