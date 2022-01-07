
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_hal2 {TYPE_1__* card; } ;
struct hal2_desc {int dummy; } ;
struct hal2_codec {int desc_count; int buffer_dma; int buffer; int desc_dma; int desc; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device* dev; } ;


 int DMA_ATTR_NON_CONSISTENT ;
 int H2_BUF_SIZE ;
 int dma_free_attrs (struct device*,int,int ,int ,int ) ;

__attribute__((used)) static void hal2_free_dmabuf(struct snd_hal2 *hal2, struct hal2_codec *codec)
{
 struct device *dev = hal2->card->dev;

 dma_free_attrs(dev, codec->desc_count * sizeof(struct hal2_desc),
         codec->desc, codec->desc_dma, DMA_ATTR_NON_CONSISTENT);
 dma_free_attrs(dev, H2_BUF_SIZE, codec->buffer, codec->buffer_dma,
         DMA_ATTR_NON_CONSISTENT);
}
