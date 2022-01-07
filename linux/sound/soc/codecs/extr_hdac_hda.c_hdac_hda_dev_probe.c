
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_hda_priv {int dummy; } ;
struct hdac_ext_link {int dummy; } ;
struct hdac_device {int bus; int dev; } ;


 int ARRAY_SIZE (int ) ;
 int EIO ;
 int ENOMEM ;
 int dev_err (int *,char*,...) ;
 int dev_name (int *) ;
 int dev_set_drvdata (int *,struct hdac_hda_priv*) ;
 int devm_snd_soc_register_component (int *,int *,int ,int ) ;
 int hdac_hda_codec ;
 int hdac_hda_dais ;
 struct hdac_hda_priv* hdac_to_hda_priv (struct hdac_device*) ;
 struct hdac_ext_link* snd_hdac_ext_bus_get_link (int ,int ) ;
 int snd_hdac_ext_bus_link_get (int ,struct hdac_ext_link*) ;
 int snd_hdac_ext_bus_link_put (int ,struct hdac_ext_link*) ;

__attribute__((used)) static int hdac_hda_dev_probe(struct hdac_device *hdev)
{
 struct hdac_ext_link *hlink;
 struct hdac_hda_priv *hda_pvt;
 int ret;


 hlink = snd_hdac_ext_bus_get_link(hdev->bus, dev_name(&hdev->dev));
 if (!hlink) {
  dev_err(&hdev->dev, "hdac link not found\n");
  return -EIO;
 }
 snd_hdac_ext_bus_link_get(hdev->bus, hlink);

 hda_pvt = hdac_to_hda_priv(hdev);
 if (!hda_pvt)
  return -ENOMEM;


 ret = devm_snd_soc_register_component(&hdev->dev,
      &hdac_hda_codec, hdac_hda_dais,
      ARRAY_SIZE(hdac_hda_dais));
 if (ret < 0) {
  dev_err(&hdev->dev, "failed to register HDA codec %d\n", ret);
  return ret;
 }

 dev_set_drvdata(&hdev->dev, hda_pvt);
 snd_hdac_ext_bus_link_put(hdev->bus, hlink);

 return ret;
}
