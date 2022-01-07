
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_dai {size_t id; } ;
struct snd_pcm_substream {int runtime; } ;
struct hdac_hdmi_priv {struct hdac_hdmi_dai_port_map* dai_map; struct hdac_device* hdev; } ;
struct TYPE_4__ {int eld_buffer; int eld_valid; int monitor_present; } ;
struct hdac_hdmi_port {TYPE_2__ eld; int id; TYPE_1__* pin; } ;
struct hdac_hdmi_dai_port_map {struct hdac_hdmi_port* port; struct hdac_hdmi_cvt* cvt; } ;
struct hdac_hdmi_cvt {int dummy; } ;
struct hdac_device {int dev; } ;
struct TYPE_3__ {int nid; } ;


 int dev_warn (int *,char*,int ,int ,int ,int ) ;
 int hdac_hdmi_eld_limit_formats (int ,int ) ;
 struct hdac_hdmi_port* hdac_hdmi_get_port_from_cvt (struct hdac_device*,struct hdac_hdmi_priv*,struct hdac_hdmi_cvt*) ;
 int snd_pcm_hw_constraint_eld (int ,int ) ;
 struct hdac_hdmi_priv* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int hdac_hdmi_pcm_open(struct snd_pcm_substream *substream,
   struct snd_soc_dai *dai)
{
 struct hdac_hdmi_priv *hdmi = snd_soc_dai_get_drvdata(dai);
 struct hdac_device *hdev = hdmi->hdev;
 struct hdac_hdmi_dai_port_map *dai_map;
 struct hdac_hdmi_cvt *cvt;
 struct hdac_hdmi_port *port;
 int ret;

 dai_map = &hdmi->dai_map[dai->id];

 cvt = dai_map->cvt;
 port = hdac_hdmi_get_port_from_cvt(hdev, hdmi, cvt);





 if (!port)
  return 0;
 if ((!port->eld.monitor_present) ||
   (!port->eld.eld_valid)) {

  dev_warn(&hdev->dev,
   "Failed: present?:%d ELD valid?:%d pin:port: %d:%d\n",
   port->eld.monitor_present, port->eld.eld_valid,
   port->pin->nid, port->id);

  return 0;
 }

 dai_map->port = port;

 ret = hdac_hdmi_eld_limit_formats(substream->runtime,
    port->eld.eld_buffer);
 if (ret < 0)
  return ret;

 return snd_pcm_hw_constraint_eld(substream->runtime,
    port->eld.eld_buffer);
}
