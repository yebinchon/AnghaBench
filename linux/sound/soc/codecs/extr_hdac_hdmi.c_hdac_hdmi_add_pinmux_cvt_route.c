
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soc_enum {int * texts; } ;
struct snd_soc_dapm_widget {int name; struct snd_kcontrol_new* kcontrol_news; } ;
struct snd_soc_dapm_route {int dummy; } ;
struct snd_kcontrol_new {scalar_t__ private_value; } ;
struct hdac_hdmi_priv {int num_cvt; int num_ports; } ;
struct hdac_device {int dummy; } ;


 int hdac_hdmi_fill_route (struct snd_soc_dapm_route*,int ,int ,int ,int *) ;
 struct hdac_hdmi_priv* hdev_to_hdmi_priv (struct hdac_device*) ;

__attribute__((used)) static void hdac_hdmi_add_pinmux_cvt_route(struct hdac_device *hdev,
   struct snd_soc_dapm_widget *widgets,
   struct snd_soc_dapm_route *route, int rindex)
{
 struct hdac_hdmi_priv *hdmi = hdev_to_hdmi_priv(hdev);
 const struct snd_kcontrol_new *kc;
 struct soc_enum *se;
 int mux_index = hdmi->num_cvt + hdmi->num_ports;
 int i, j;

 for (i = 0; i < hdmi->num_ports; i++) {
  kc = widgets[mux_index].kcontrol_news;
  se = (struct soc_enum *)kc->private_value;
  for (j = 0; j < hdmi->num_cvt; j++) {
   hdac_hdmi_fill_route(&route[rindex],
     widgets[mux_index].name,
     se->texts[j + 1],
     widgets[j].name, ((void*)0));

   rindex++;
  }

  mux_index++;
 }
}
