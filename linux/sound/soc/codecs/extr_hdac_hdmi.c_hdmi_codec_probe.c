
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct snd_soc_dapm_context {TYPE_1__* card; } ;
struct snd_soc_component {TYPE_2__* card; } ;
struct hdac_hdmi_priv {int card; struct snd_soc_component* component; struct hdac_device* hdev; } ;
struct hdac_ext_link {int dummy; } ;
struct hdac_device {int dev; int bus; } ;
struct TYPE_7__ {struct hdac_device* audio_ptr; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_5__ {int snd_card; } ;


 int DL_FLAG_AUTOREMOVE_CONSUMER ;
 int DL_FLAG_RPM_ACTIVE ;
 int EIO ;
 TYPE_3__ aops ;
 int create_fill_widget_route_map (struct snd_soc_dapm_context*) ;
 int dev_err (int *,char*,...) ;
 int dev_name (int *) ;
 int device_link_add (int ,int *,int) ;
 int hdac_hdmi_present_sense_all_pins (struct hdac_device*,struct hdac_hdmi_priv*,int) ;
 int pm_runtime_enable (int *) ;
 int pm_runtime_put (int *) ;
 int pm_runtime_suspend (int *) ;
 int snd_hdac_acomp_register_notifier (int ,TYPE_3__*) ;
 struct hdac_ext_link* snd_hdac_ext_bus_get_link (int ,int ) ;
 int snd_hdac_ext_bus_link_get (int ,struct hdac_ext_link*) ;
 struct snd_soc_dapm_context* snd_soc_component_get_dapm (struct snd_soc_component*) ;
 struct hdac_hdmi_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int hdmi_codec_probe(struct snd_soc_component *component)
{
 struct hdac_hdmi_priv *hdmi = snd_soc_component_get_drvdata(component);
 struct hdac_device *hdev = hdmi->hdev;
 struct snd_soc_dapm_context *dapm =
  snd_soc_component_get_dapm(component);
 struct hdac_ext_link *hlink = ((void*)0);
 int ret;

 hdmi->component = component;





 hlink = snd_hdac_ext_bus_get_link(hdev->bus, dev_name(&hdev->dev));
 if (!hlink) {
  dev_err(&hdev->dev, "hdac link not found\n");
  return -EIO;
 }

 snd_hdac_ext_bus_link_get(hdev->bus, hlink);

 ret = create_fill_widget_route_map(dapm);
 if (ret < 0)
  return ret;

 aops.audio_ptr = hdev;
 ret = snd_hdac_acomp_register_notifier(hdev->bus, &aops);
 if (ret < 0) {
  dev_err(&hdev->dev, "notifier register failed: err: %d\n", ret);
  return ret;
 }

 hdac_hdmi_present_sense_all_pins(hdev, hdmi, 1);

 hdmi->card = dapm->card->snd_card;
 device_link_add(component->card->dev, &hdev->dev, DL_FLAG_RPM_ACTIVE |
   DL_FLAG_AUTOREMOVE_CONSUMER);




 pm_runtime_enable(&hdev->dev);
 pm_runtime_put(&hdev->dev);
 pm_runtime_suspend(&hdev->dev);

 return 0;
}
