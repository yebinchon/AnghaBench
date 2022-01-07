
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct uniperif {scalar_t__ irq; int type; TYPE_1__* hw; int dai_ops; TYPE_4__* mem_region; scalar_t__ fifo_phys_address; int base; int ver; int id; } ;
struct sti_uniperiph_dev_data {int type; scalar_t__ stream; int dai_names; int version; int id; } ;
struct sti_uniperiph_dai {scalar_t__ stream; struct uniperif* uni; } ;
struct sti_uniperiph_data {TYPE_2__* pdev; struct sti_uniperiph_dai dai_data; struct snd_soc_dai_driver* dai; } ;
struct snd_soc_pcm_stream {int formats; int rates; int channels_max; int channels_min; int stream_name; } ;
struct snd_soc_dai_driver {int name; int ops; struct snd_soc_pcm_stream capture; struct snd_soc_pcm_stream playback; } ;
struct of_device_id {scalar_t__ data; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_10__ {scalar_t__ start; } ;
struct TYPE_9__ {struct device dev; } ;
struct TYPE_8__ {int formats; int rates; int channels_max; int channels_min; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int SND_ST_UNIPERIF_TYPE_PCM ;
 int SND_ST_UNIPERIF_TYPE_TDM ;
 scalar_t__ UNIPERIF_FIFO_DATA_OFFSET (struct uniperif*) ;
 int dev_err (struct device*,char*) ;
 int devm_ioremap_resource (struct device*,TYPE_4__*) ;
 struct uniperif* devm_kzalloc (struct device*,int,int ) ;
 struct of_device_id* of_match_node (int ,struct device_node*) ;
 int of_property_read_string (struct device_node*,char*,char const**) ;
 scalar_t__ platform_get_irq (TYPE_2__*,int ) ;
 TYPE_4__* platform_get_resource (TYPE_2__*,int ,int ) ;
 int snd_soc_sti_match ;
 struct snd_soc_dai_driver sti_uniperiph_dai_template ;
 int uni_player_init (TYPE_2__*,struct uniperif*) ;
 int uni_reader_init (TYPE_2__*,struct uniperif*) ;

__attribute__((used)) static int sti_uniperiph_cpu_dai_of(struct device_node *node,
        struct sti_uniperiph_data *priv)
{
 struct device *dev = &priv->pdev->dev;
 struct sti_uniperiph_dai *dai_data = &priv->dai_data;
 struct snd_soc_dai_driver *dai = priv->dai;
 struct snd_soc_pcm_stream *stream;
 struct uniperif *uni;
 const struct of_device_id *of_id;
 const struct sti_uniperiph_dev_data *dev_data;
 const char *mode;
 int ret;


 of_id = of_match_node(snd_soc_sti_match, node);
 if (!of_id->data) {
  dev_err(dev, "data associated to device is missing\n");
  return -EINVAL;
 }
 dev_data = (struct sti_uniperiph_dev_data *)of_id->data;

 uni = devm_kzalloc(dev, sizeof(*uni), GFP_KERNEL);
 if (!uni)
  return -ENOMEM;

 uni->id = dev_data->id;
 uni->ver = dev_data->version;

 *dai = sti_uniperiph_dai_template;
 dai->name = dev_data->dai_names;


 uni->mem_region = platform_get_resource(priv->pdev, IORESOURCE_MEM, 0);

 if (!uni->mem_region) {
  dev_err(dev, "Failed to get memory resource\n");
  return -ENODEV;
 }

 uni->base = devm_ioremap_resource(dev, uni->mem_region);

 if (IS_ERR(uni->base))
  return PTR_ERR(uni->base);

 uni->fifo_phys_address = uni->mem_region->start +
         UNIPERIF_FIFO_DATA_OFFSET(uni);

 uni->irq = platform_get_irq(priv->pdev, 0);
 if (uni->irq < 0)
  return -ENXIO;

 uni->type = dev_data->type;


 if (dev_data->type & SND_ST_UNIPERIF_TYPE_TDM) {
  if (!of_property_read_string(node, "st,tdm-mode", &mode))
   uni->type = SND_ST_UNIPERIF_TYPE_TDM;
  else
   uni->type = SND_ST_UNIPERIF_TYPE_PCM;
 }

 dai_data->uni = uni;
 dai_data->stream = dev_data->stream;

 if (priv->dai_data.stream == SNDRV_PCM_STREAM_PLAYBACK) {
  ret = uni_player_init(priv->pdev, uni);
  stream = &dai->playback;
 } else {
  ret = uni_reader_init(priv->pdev, uni);
  stream = &dai->capture;
 }
 if (ret < 0)
  return ret;

 dai->ops = uni->dai_ops;

 stream->stream_name = dai->name;
 stream->channels_min = uni->hw->channels_min;
 stream->channels_max = uni->hw->channels_max;
 stream->rates = uni->hw->rates;
 stream->formats = uni->hw->formats;

 return 0;
}
