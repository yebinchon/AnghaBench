
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_hdmi_priv {int num_ports; int num_pin; int pin_list; } ;
struct hdac_hdmi_pin {int mst_capable; scalar_t__ num_ports; int head; struct hdac_device* hdev; int nid; } ;
struct hdac_device {int dev; } ;
typedef int hda_nid_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct hdac_hdmi_pin* devm_kzalloc (int *,int,int ) ;
 int hdac_hdmi_add_ports (struct hdac_device*,struct hdac_hdmi_pin*) ;
 struct hdac_hdmi_priv* hdev_to_hdmi_priv (struct hdac_device*) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static int hdac_hdmi_add_pin(struct hdac_device *hdev, hda_nid_t nid)
{
 struct hdac_hdmi_priv *hdmi = hdev_to_hdmi_priv(hdev);
 struct hdac_hdmi_pin *pin;
 int ret;

 pin = devm_kzalloc(&hdev->dev, sizeof(*pin), GFP_KERNEL);
 if (!pin)
  return -ENOMEM;

 pin->nid = nid;
 pin->mst_capable = 0;
 pin->hdev = hdev;
 ret = hdac_hdmi_add_ports(hdev, pin);
 if (ret < 0)
  return ret;

 list_add_tail(&pin->head, &hdmi->pin_list);
 hdmi->num_pin++;
 hdmi->num_ports += pin->num_ports;

 return 0;
}
