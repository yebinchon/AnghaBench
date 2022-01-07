
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_chan {void* private; } ;


 int imx_dma_is_general_purpose (struct dma_chan*) ;

__attribute__((used)) static bool filter(struct dma_chan *chan, void *param)
{
 if (!imx_dma_is_general_purpose(chan))
  return 0;

 chan->private = param;

 return 1;
}
