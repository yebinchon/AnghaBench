
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpass_variant {int rdma_channels; int wrdma_channel_start; int wrdma_channels; } ;
struct lpass_data {int dma_ch_bit_map; struct lpass_variant* variant; } ;


 int EBUSY ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 int find_first_zero_bit (int *,int) ;
 int find_next_zero_bit (int *,int,int) ;
 int set_bit (int,int *) ;

__attribute__((used)) static int apq8016_lpass_alloc_dma_channel(struct lpass_data *drvdata,
        int direction)
{
 struct lpass_variant *v = drvdata->variant;
 int chan = 0;

 if (direction == SNDRV_PCM_STREAM_PLAYBACK) {
  chan = find_first_zero_bit(&drvdata->dma_ch_bit_map,
     v->rdma_channels);

  if (chan >= v->rdma_channels)
   return -EBUSY;
 } else {
  chan = find_next_zero_bit(&drvdata->dma_ch_bit_map,
     v->wrdma_channel_start +
     v->wrdma_channels,
     v->wrdma_channel_start);

  if (chan >= v->wrdma_channel_start + v->wrdma_channels)
   return -EBUSY;
 }

 set_bit(chan, &drvdata->dma_ch_bit_map);

 return chan;
}
