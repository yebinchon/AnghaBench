
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct hdac_hdmi_priv {struct hdac_device* hdev; } ;
struct hdac_device {int dev; int bus; } ;


 int dev_err (int *,char*,int) ;
 int pm_runtime_disable (int *) ;
 int snd_hdac_acomp_register_notifier (int ,int *) ;
 struct hdac_hdmi_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static void hdmi_codec_remove(struct snd_soc_component *component)
{
 struct hdac_hdmi_priv *hdmi = snd_soc_component_get_drvdata(component);
 struct hdac_device *hdev = hdmi->hdev;
 int ret;

 ret = snd_hdac_acomp_register_notifier(hdev->bus, ((void*)0));
 if (ret < 0)
  dev_err(&hdev->dev, "notifier unregister failed: err: %d\n",
    ret);

 pm_runtime_disable(&hdev->dev);
}
