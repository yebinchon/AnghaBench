
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_hdmi_priv {int dummy; } ;
struct hdac_hdmi_pcm {int chmap; } ;
struct hdac_device {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 struct hdac_hdmi_pcm* get_hdmi_pcm_from_id (struct hdac_hdmi_priv*,int) ;
 struct hdac_hdmi_priv* hdev_to_hdmi_priv (struct hdac_device*) ;
 int memcpy (unsigned char*,int ,int ) ;

__attribute__((used)) static void hdac_hdmi_get_chmap(struct hdac_device *hdev, int pcm_idx,
     unsigned char *chmap)
{
 struct hdac_hdmi_priv *hdmi = hdev_to_hdmi_priv(hdev);
 struct hdac_hdmi_pcm *pcm = get_hdmi_pcm_from_id(hdmi, pcm_idx);

 memcpy(chmap, pcm->chmap, ARRAY_SIZE(pcm->chmap));
}
