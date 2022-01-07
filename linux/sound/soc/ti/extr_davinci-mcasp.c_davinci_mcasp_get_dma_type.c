
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct dma_chan {TYPE_3__* device; } ;
struct davinci_mcasp {TYPE_4__* dev; TYPE_1__* dma_data; } ;
struct TYPE_10__ {int of_node; } ;
struct TYPE_9__ {TYPE_2__* dev; } ;
struct TYPE_8__ {scalar_t__ of_node; } ;
struct TYPE_7__ {char* filter_data; } ;


 int EINVAL ;
 int EPROBE_DEFER ;
 scalar_t__ IS_ERR (struct dma_chan*) ;
 int PCM_EDMA ;
 int PCM_SDMA ;
 int PTR_ERR (struct dma_chan*) ;
 size_t SNDRV_PCM_STREAM_PLAYBACK ;
 scalar_t__ WARN_ON (int) ;
 int dev_dbg (TYPE_4__*,char*,...) ;
 int dev_err (TYPE_4__*,char*,int) ;
 int dma_release_channel (struct dma_chan*) ;
 struct dma_chan* dma_request_slave_channel_reason (TYPE_4__*,char const*) ;
 int of_property_read_string (scalar_t__,char*,char const**) ;
 int sdma_prefix ;
 int strlen (int ) ;
 int strncmp (char const*,int ,int ) ;

__attribute__((used)) static int davinci_mcasp_get_dma_type(struct davinci_mcasp *mcasp)
{
 struct dma_chan *chan;
 const char *tmp;
 int ret = PCM_EDMA;

 if (!mcasp->dev->of_node)
  return PCM_EDMA;

 tmp = mcasp->dma_data[SNDRV_PCM_STREAM_PLAYBACK].filter_data;
 chan = dma_request_slave_channel_reason(mcasp->dev, tmp);
 if (IS_ERR(chan)) {
  if (PTR_ERR(chan) != -EPROBE_DEFER)
   dev_err(mcasp->dev,
    "Can't verify DMA configuration (%ld)\n",
    PTR_ERR(chan));
  return PTR_ERR(chan);
 }
 if (WARN_ON(!chan->device || !chan->device->dev))
  return -EINVAL;

 if (chan->device->dev->of_node)
  ret = of_property_read_string(chan->device->dev->of_node,
           "compatible", &tmp);
 else
  dev_dbg(mcasp->dev, "DMA controller has no of-node\n");

 dma_release_channel(chan);
 if (ret)
  return ret;

 dev_dbg(mcasp->dev, "DMA controller compatible = \"%s\"\n", tmp);
 if (!strncmp(tmp, sdma_prefix, strlen(sdma_prefix)))
  return PCM_SDMA;

 return PCM_EDMA;
}
