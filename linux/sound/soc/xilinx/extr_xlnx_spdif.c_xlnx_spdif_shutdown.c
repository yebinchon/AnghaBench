
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spdif_dev_data {scalar_t__ base; } ;
struct snd_soc_dai {int dev; } ;
struct snd_pcm_substream {int dummy; } ;


 scalar_t__ XSPDIF_SOFT_RESET_REG ;
 int XSPDIF_SOFT_RESET_VALUE ;
 struct spdif_dev_data* dev_get_drvdata (int ) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void xlnx_spdif_shutdown(struct snd_pcm_substream *substream,
    struct snd_soc_dai *dai)
{
 struct spdif_dev_data *ctx = dev_get_drvdata(dai->dev);

 writel(XSPDIF_SOFT_RESET_VALUE, ctx->base + XSPDIF_SOFT_RESET_REG);
}
