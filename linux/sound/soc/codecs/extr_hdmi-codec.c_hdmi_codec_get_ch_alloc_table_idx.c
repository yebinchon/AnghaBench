
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hdmi_codec_priv {int eld; } ;
struct hdmi_codec_cea_spk_alloc {scalar_t__ ca_id; unsigned char n_ch; unsigned long mask; } ;


 int ARRAY_SIZE (struct hdmi_codec_cea_spk_alloc*) ;
 int EINVAL ;
 int drm_eld_get_spk_alloc (int ) ;
 struct hdmi_codec_cea_spk_alloc* hdmi_codec_channel_alloc ;
 unsigned long hdmi_codec_spk_mask_from_alloc (int ) ;

__attribute__((used)) static int hdmi_codec_get_ch_alloc_table_idx(struct hdmi_codec_priv *hcp,
          unsigned char channels)
{
 int i;
 u8 spk_alloc;
 unsigned long spk_mask;
 const struct hdmi_codec_cea_spk_alloc *cap = hdmi_codec_channel_alloc;

 spk_alloc = drm_eld_get_spk_alloc(hcp->eld);
 spk_mask = hdmi_codec_spk_mask_from_alloc(spk_alloc);

 for (i = 0; i < ARRAY_SIZE(hdmi_codec_channel_alloc); i++, cap++) {

  if (!spk_alloc && cap->ca_id == 0)
   return i;
  if (cap->n_ch != channels)
   continue;
  if (!(cap->mask == (spk_mask & cap->mask)))
   continue;
  return i;
 }

 return -EINVAL;
}
