
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_hdmi_priv {int num_cvt; int cvt_list; } ;
struct hdac_hdmi_cvt {int nid; int head; int name; } ;
struct hdac_device {int dev; } ;
typedef int hda_nid_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int NAME_SIZE ;
 int devm_kstrdup (int *,char*,int ) ;
 struct hdac_hdmi_cvt* devm_kzalloc (int *,int,int ) ;
 int hdac_hdmi_query_cvt_params (struct hdac_device*,struct hdac_hdmi_cvt*) ;
 struct hdac_hdmi_priv* hdev_to_hdmi_priv (struct hdac_device*) ;
 int list_add_tail (int *,int *) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static int hdac_hdmi_add_cvt(struct hdac_device *hdev, hda_nid_t nid)
{
 struct hdac_hdmi_priv *hdmi = hdev_to_hdmi_priv(hdev);
 struct hdac_hdmi_cvt *cvt;
 char name[NAME_SIZE];

 cvt = devm_kzalloc(&hdev->dev, sizeof(*cvt), GFP_KERNEL);
 if (!cvt)
  return -ENOMEM;

 cvt->nid = nid;
 sprintf(name, "cvt %d", cvt->nid);
 cvt->name = devm_kstrdup(&hdev->dev, name, GFP_KERNEL);
 if (!cvt->name)
  return -ENOMEM;

 list_add_tail(&cvt->head, &hdmi->cvt_list);
 hdmi->num_cvt++;

 return hdac_hdmi_query_cvt_params(hdev, cvt);
}
