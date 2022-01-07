
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_hdmi_priv {int dummy; } ;
struct hdac_hdmi_pcm {int port_list; } ;
struct hdac_device {int dummy; } ;


 struct hdac_hdmi_pcm* get_hdmi_pcm_from_id (struct hdac_hdmi_priv*,int) ;
 struct hdac_hdmi_priv* hdev_to_hdmi_priv (struct hdac_device*) ;
 scalar_t__ list_empty (int *) ;

__attribute__((used)) static bool is_hdac_hdmi_pcm_attached(struct hdac_device *hdev, int pcm_idx)
{
 struct hdac_hdmi_priv *hdmi = hdev_to_hdmi_priv(hdev);
 struct hdac_hdmi_pcm *pcm = get_hdmi_pcm_from_id(hdmi, pcm_idx);

 if (!pcm)
  return 0;

 if (list_empty(&pcm->port_list))
  return 0;

 return 1;
}
