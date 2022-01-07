
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_chmap {int dummy; } ;
typedef int hda_nid_t ;


 int hdmi_debug_channel_mapping (struct hdac_chmap*,int ) ;
 int hdmi_manual_setup_channel_mapping (struct hdac_chmap*,int ,int,unsigned char*,int) ;
 int hdmi_setup_fake_chmap (unsigned char*,int) ;
 int hdmi_std_setup_channel_mapping (struct hdac_chmap*,int ,int,int) ;

void snd_hdac_setup_channel_mapping(struct hdac_chmap *chmap,
           hda_nid_t pin_nid, bool non_pcm, int ca,
           int channels, unsigned char *map,
           bool chmap_set)
{
 if (!non_pcm && chmap_set) {
  hdmi_manual_setup_channel_mapping(chmap, pin_nid,
        channels, map, ca);
 } else {
  hdmi_std_setup_channel_mapping(chmap, pin_nid, non_pcm, ca);
  hdmi_setup_fake_chmap(map, ca);
 }

 hdmi_debug_channel_mapping(chmap, pin_nid);
}
