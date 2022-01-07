
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int u8 ;
struct hdmi_audio_infoframe {int channels; int channel_allocation; } ;
struct TYPE_6__ {int (* set_channel_count ) (struct hdac_device*,int ,int) ;} ;
struct TYPE_8__ {TYPE_2__ ops; } ;
struct hdac_hdmi_priv {TYPE_4__ chmap; } ;
struct TYPE_5__ {int spk_alloc; } ;
struct TYPE_7__ {int* eld_buffer; TYPE_1__ info; } ;
struct hdac_hdmi_port {TYPE_3__ eld; struct hdac_hdmi_pin* pin; } ;
struct hdac_hdmi_pin {int nid; } ;
struct hdac_hdmi_pcm {int chmap_set; int chmap; int channels; struct hdac_hdmi_cvt* cvt; } ;
struct hdac_hdmi_cvt {int nid; } ;
struct hdac_device {int dev; } ;
struct dp_audio_infoframe {int type; int len; int ver; int CC02_CT47; int CA; } ;
typedef int dp_ai ;
typedef int buffer ;


 int AC_DIPXMIT_BEST ;
 int AC_DIPXMIT_DISABLE ;
 int AC_VERB_SET_HDMI_DIP_DATA ;
 int AC_VERB_SET_HDMI_DIP_XMIT ;


 int EIO ;
 int HDMI_AUDIO_INFOFRAME_SIZE ;
 int HDMI_INFOFRAME_HEADER_SIZE ;
 int dev_err (int *,char*,int) ;
 int drm_eld_get_conn_type (int const*) ;
 int hdac_hdmi_set_dip_index (struct hdac_device*,int ,int,int) ;
 struct hdac_hdmi_priv* hdev_to_hdmi_priv (struct hdac_device*) ;
 int hdmi_audio_infoframe_init (struct hdmi_audio_infoframe*) ;
 int hdmi_audio_infoframe_pack (struct hdmi_audio_infoframe*,int*,int) ;
 int memset (struct dp_audio_infoframe*,int ,int) ;
 int snd_hdac_channel_allocation (struct hdac_device*,int ,int ,int ,int,int ) ;
 int snd_hdac_codec_write (struct hdac_device*,int ,int ,int ,int) ;
 int snd_hdac_get_active_channels (int) ;
 int snd_hdac_setup_channel_mapping (TYPE_4__*,int ,int,int,int ,int ,int ) ;
 int stub1 (struct hdac_device*,int ,int) ;

__attribute__((used)) static int hdac_hdmi_setup_audio_infoframe(struct hdac_device *hdev,
     struct hdac_hdmi_pcm *pcm, struct hdac_hdmi_port *port)
{
 uint8_t buffer[HDMI_INFOFRAME_HEADER_SIZE + HDMI_AUDIO_INFOFRAME_SIZE];
 struct hdmi_audio_infoframe frame;
 struct hdac_hdmi_pin *pin = port->pin;
 struct dp_audio_infoframe dp_ai;
 struct hdac_hdmi_priv *hdmi = hdev_to_hdmi_priv(hdev);
 struct hdac_hdmi_cvt *cvt = pcm->cvt;
 u8 *dip;
 int ret;
 int i;
 const u8 *eld_buf;
 u8 conn_type;
 int channels, ca;

 ca = snd_hdac_channel_allocation(hdev, port->eld.info.spk_alloc,
   pcm->channels, pcm->chmap_set, 1, pcm->chmap);

 channels = snd_hdac_get_active_channels(ca);
 hdmi->chmap.ops.set_channel_count(hdev, cvt->nid, channels);

 snd_hdac_setup_channel_mapping(&hdmi->chmap, pin->nid, 0, ca,
    pcm->channels, pcm->chmap, pcm->chmap_set);

 eld_buf = port->eld.eld_buffer;
 conn_type = drm_eld_get_conn_type(eld_buf);

 switch (conn_type) {
 case 128:
  hdmi_audio_infoframe_init(&frame);

  frame.channels = channels;
  frame.channel_allocation = ca;

  ret = hdmi_audio_infoframe_pack(&frame, buffer, sizeof(buffer));
  if (ret < 0)
   return ret;

  break;

 case 129:
  memset(&dp_ai, 0, sizeof(dp_ai));
  dp_ai.type = 0x84;
  dp_ai.len = 0x1b;
  dp_ai.ver = 0x11 << 2;
  dp_ai.CC02_CT47 = channels - 1;
  dp_ai.CA = ca;

  dip = (u8 *)&dp_ai;
  break;

 default:
  dev_err(&hdev->dev, "Invalid connection type: %d\n", conn_type);
  return -EIO;
 }


 hdac_hdmi_set_dip_index(hdev, pin->nid, 0x0, 0x0);
 snd_hdac_codec_write(hdev, pin->nid, 0,
   AC_VERB_SET_HDMI_DIP_XMIT, AC_DIPXMIT_DISABLE);



 hdac_hdmi_set_dip_index(hdev, pin->nid, 0x0, 0x0);
 if (conn_type == 128) {
  for (i = 0; i < sizeof(buffer); i++)
   snd_hdac_codec_write(hdev, pin->nid, 0,
    AC_VERB_SET_HDMI_DIP_DATA, buffer[i]);
 } else {
  for (i = 0; i < sizeof(dp_ai); i++)
   snd_hdac_codec_write(hdev, pin->nid, 0,
    AC_VERB_SET_HDMI_DIP_DATA, dip[i]);
 }


 hdac_hdmi_set_dip_index(hdev, pin->nid, 0x0, 0x0);
 snd_hdac_codec_write(hdev, pin->nid, 0,
   AC_VERB_SET_HDMI_DIP_XMIT, AC_DIPXMIT_BEST);

 return 0;
}
