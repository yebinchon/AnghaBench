
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct snd_soc_dapm_widget {struct skl_module_cfg* priv; } ;
struct skl_module_iface {TYPE_5__* inputs; TYPE_3__* outputs; } ;
struct TYPE_12__ {scalar_t__ caps_size; int* caps; } ;
struct skl_module_cfg {int dev_type; int fmt_idx; int vbus_id; TYPE_6__ formats_config; int hw_conn_type; TYPE_1__* module; } ;
struct skl_dev {int dev; } ;
struct nhlt_specific_cfg {scalar_t__ size; int caps; } ;
struct TYPE_10__ {int s_freq; int bit_depth; int channels; } ;
struct TYPE_11__ {TYPE_4__ fmt; } ;
struct TYPE_8__ {int s_freq; int bit_depth; int channels; } ;
struct TYPE_9__ {TYPE_2__ fmt; } ;
struct TYPE_7__ {struct skl_module_iface* formats; } ;


 int EINVAL ;
 int EIO ;
 int NHLT_LINK_DMIC ;
 int NHLT_LINK_SSP ;
 int SKL_CONN_SOURCE ;


 int SNDRV_PCM_STREAM_CAPTURE ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*,int,int,int) ;
 struct nhlt_specific_cfg* skl_get_ep_blob (struct skl_dev*,int,int,int,int,int,int,int ) ;
 int skl_tplg_be_dev_type (int) ;

__attribute__((used)) static int skl_tplg_update_be_blob(struct snd_soc_dapm_widget *w,
      struct skl_dev *skl)
{
 struct skl_module_cfg *m_cfg = w->priv;
 int link_type, dir;
 u32 ch, s_freq, s_fmt;
 struct nhlt_specific_cfg *cfg;
 u8 dev_type = skl_tplg_be_dev_type(m_cfg->dev_type);
 int fmt_idx = m_cfg->fmt_idx;
 struct skl_module_iface *m_iface = &m_cfg->module->formats[fmt_idx];


 if (m_cfg->formats_config.caps_size > 0)
  return 0;

 dev_dbg(skl->dev, "Applying default cfg blob\n");
 switch (m_cfg->dev_type) {
 case 129:
  link_type = NHLT_LINK_DMIC;
  dir = SNDRV_PCM_STREAM_CAPTURE;
  s_freq = m_iface->inputs[0].fmt.s_freq;
  s_fmt = m_iface->inputs[0].fmt.bit_depth;
  ch = m_iface->inputs[0].fmt.channels;
  break;

 case 128:
  link_type = NHLT_LINK_SSP;
  if (m_cfg->hw_conn_type == SKL_CONN_SOURCE) {
   dir = SNDRV_PCM_STREAM_PLAYBACK;
   s_freq = m_iface->outputs[0].fmt.s_freq;
   s_fmt = m_iface->outputs[0].fmt.bit_depth;
   ch = m_iface->outputs[0].fmt.channels;
  } else {
   dir = SNDRV_PCM_STREAM_CAPTURE;
   s_freq = m_iface->inputs[0].fmt.s_freq;
   s_fmt = m_iface->inputs[0].fmt.bit_depth;
   ch = m_iface->inputs[0].fmt.channels;
  }
  break;

 default:
  return -EINVAL;
 }


 cfg = skl_get_ep_blob(skl, m_cfg->vbus_id, link_type,
     s_fmt, ch, s_freq, dir, dev_type);
 if (cfg) {
  m_cfg->formats_config.caps_size = cfg->size;
  m_cfg->formats_config.caps = (u32 *) &cfg->caps;
 } else {
  dev_err(skl->dev, "Blob NULL for id %x type %d dirn %d\n",
     m_cfg->vbus_id, link_type, dir);
  dev_err(skl->dev, "PCM: ch %d, freq %d, fmt %d\n",
     ch, s_freq, s_fmt);
  return -EIO;
 }

 return 0;
}
