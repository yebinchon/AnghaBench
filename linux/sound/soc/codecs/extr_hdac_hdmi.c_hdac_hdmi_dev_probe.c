
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct snd_soc_dai_driver {int dummy; } ;
struct TYPE_8__ {int get_spk_alloc; int is_pcm_attached; int set_chmap; int get_chmap; } ;
struct TYPE_9__ {TYPE_1__ ops; } ;
struct hdac_hdmi_priv {int pin_mutex; int pcm_list; int cvt_list; int pin_list; struct hdac_hdmi_drv_data* drv_data; struct hdac_device* hdev; TYPE_2__ chmap; } ;
struct hdac_hdmi_drv_data {int dummy; } ;
struct hdac_ext_link {int dummy; } ;
struct hdac_driver {int dummy; } ;
struct TYPE_10__ {int driver; } ;
struct hdac_device {int bus; TYPE_3__ dev; int addr; } ;
struct hda_device_id {scalar_t__ driver_data; } ;


 int EIO ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int dev_err (TYPE_3__*,char*,...) ;
 int dev_name (TYPE_3__*) ;
 int dev_set_drvdata (TYPE_3__*,struct hdac_hdmi_priv*) ;
 struct hdac_hdmi_priv* devm_kzalloc (TYPE_3__*,int,int ) ;
 int devm_snd_soc_register_component (TYPE_3__*,int *,struct snd_soc_dai_driver*,int) ;
 struct hdac_driver* drv_to_hdac_driver (int ) ;
 struct hda_device_id* hdac_get_device_id (struct hdac_device*,struct hdac_driver*) ;
 int hdac_hdmi_get_chmap ;
 int hdac_hdmi_get_spk_alloc ;
 int hdac_hdmi_parse_and_map_nid (struct hdac_device*,struct snd_soc_dai_driver**,int*) ;
 int hdac_hdmi_set_chmap ;
 int hdmi_hda_codec ;
 struct hdac_hdmi_drv_data intel_drv_data ;
 int is_hdac_hdmi_pcm_attached ;
 int mutex_init (int *) ;
 int snd_hdac_display_power (int ,int ,int) ;
 struct hdac_ext_link* snd_hdac_ext_bus_get_link (int ,int ) ;
 int snd_hdac_ext_bus_link_get (int ,struct hdac_ext_link*) ;
 int snd_hdac_ext_bus_link_put (int ,struct hdac_ext_link*) ;
 int snd_hdac_refresh_widgets (struct hdac_device*) ;
 int snd_hdac_register_chmap_ops (struct hdac_device*,TYPE_2__*) ;

__attribute__((used)) static int hdac_hdmi_dev_probe(struct hdac_device *hdev)
{
 struct hdac_hdmi_priv *hdmi_priv = ((void*)0);
 struct snd_soc_dai_driver *hdmi_dais = ((void*)0);
 struct hdac_ext_link *hlink = ((void*)0);
 int num_dais = 0;
 int ret = 0;
 struct hdac_driver *hdrv = drv_to_hdac_driver(hdev->dev.driver);
 const struct hda_device_id *hdac_id = hdac_get_device_id(hdev, hdrv);


 hlink = snd_hdac_ext_bus_get_link(hdev->bus, dev_name(&hdev->dev));
 if (!hlink) {
  dev_err(&hdev->dev, "hdac link not found\n");
  return -EIO;
 }

 snd_hdac_ext_bus_link_get(hdev->bus, hlink);

 hdmi_priv = devm_kzalloc(&hdev->dev, sizeof(*hdmi_priv), GFP_KERNEL);
 if (hdmi_priv == ((void*)0))
  return -ENOMEM;

 snd_hdac_register_chmap_ops(hdev, &hdmi_priv->chmap);
 hdmi_priv->chmap.ops.get_chmap = hdac_hdmi_get_chmap;
 hdmi_priv->chmap.ops.set_chmap = hdac_hdmi_set_chmap;
 hdmi_priv->chmap.ops.is_pcm_attached = is_hdac_hdmi_pcm_attached;
 hdmi_priv->chmap.ops.get_spk_alloc = hdac_hdmi_get_spk_alloc;
 hdmi_priv->hdev = hdev;

 if (!hdac_id)
  return -ENODEV;

 if (hdac_id->driver_data)
  hdmi_priv->drv_data =
   (struct hdac_hdmi_drv_data *)hdac_id->driver_data;
 else
  hdmi_priv->drv_data = &intel_drv_data;

 dev_set_drvdata(&hdev->dev, hdmi_priv);

 INIT_LIST_HEAD(&hdmi_priv->pin_list);
 INIT_LIST_HEAD(&hdmi_priv->cvt_list);
 INIT_LIST_HEAD(&hdmi_priv->pcm_list);
 mutex_init(&hdmi_priv->pin_mutex);





 snd_hdac_display_power(hdev->bus, hdev->addr, 1);

 ret = hdac_hdmi_parse_and_map_nid(hdev, &hdmi_dais, &num_dais);
 if (ret < 0) {
  dev_err(&hdev->dev,
   "Failed in parse and map nid with err: %d\n", ret);
  return ret;
 }
 snd_hdac_refresh_widgets(hdev);


 ret = devm_snd_soc_register_component(&hdev->dev, &hdmi_hda_codec,
     hdmi_dais, num_dais);

 snd_hdac_ext_bus_link_put(hdev->bus, hlink);

 return ret;
}
