
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ep93xx_dma_data {scalar_t__ direction; } ;
struct dma_chan {struct ep93xx_dma_data* private; } ;


 scalar_t__ ep93xx_dma_chan_direction (struct dma_chan*) ;

__attribute__((used)) static bool ep93xx_pcm_dma_filter(struct dma_chan *chan, void *filter_param)
{
 struct ep93xx_dma_data *data = filter_param;

 if (data->direction == ep93xx_dma_chan_direction(chan)) {
  chan->private = data;
  return 1;
 }

 return 0;
}
