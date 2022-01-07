
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct xlnx_pcm_stream_param {scalar_t__ mmio; } ;
struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct TYPE_2__ {struct xlnx_pcm_stream_param* private_data; } ;


 int AUD_CTRL_DMA_EN_MASK ;






 scalar_t__ XLNX_AUD_CTRL ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int xlnx_formatter_pcm_trigger(struct snd_pcm_substream *substream,
          int cmd)
{
 u32 val;
 struct xlnx_pcm_stream_param *stream_data =
   substream->runtime->private_data;

 switch (cmd) {
 case 130:
 case 132:
 case 131:
  val = readl(stream_data->mmio + XLNX_AUD_CTRL);
  val |= AUD_CTRL_DMA_EN_MASK;
  writel(val, stream_data->mmio + XLNX_AUD_CTRL);
  break;
 case 129:
 case 133:
 case 128:
  val = readl(stream_data->mmio + XLNX_AUD_CTRL);
  val &= ~AUD_CTRL_DMA_EN_MASK;
  writel(val, stream_data->mmio + XLNX_AUD_CTRL);
  break;
 }

 return 0;
}
