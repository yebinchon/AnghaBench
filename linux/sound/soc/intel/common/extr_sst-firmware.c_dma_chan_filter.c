
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sst_dsp {scalar_t__ dma_dev; } ;
struct dma_chan {TYPE_1__* device; } ;
struct TYPE_2__ {scalar_t__ dev; } ;



__attribute__((used)) static bool dma_chan_filter(struct dma_chan *chan, void *param)
{
 struct sst_dsp *dsp = (struct sst_dsp *)param;

 return chan->device->dev == dsp->dma_dev;
}
