
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parsed_hdmi_eld {size_t conn_type; int sad_count; scalar_t__ sad; scalar_t__ spk_alloc; int monitor_name; } ;
struct hda_codec {int dummy; } ;
typedef int buf ;


 int SND_PRINT_CHANNEL_ALLOCATION_ADVISED_BUFSIZE ;
 int codec_dbg (struct hda_codec*,char*,char*,...) ;
 int * eld_connection_type_names ;
 int hdmi_show_short_audio_desc (struct hda_codec*,scalar_t__) ;
 int snd_hdac_print_channel_allocation (scalar_t__,char*,int) ;

void snd_hdmi_show_eld(struct hda_codec *codec, struct parsed_hdmi_eld *e)
{
 int i;

 codec_dbg(codec, "HDMI: detected monitor %s at connection type %s\n",
   e->monitor_name,
   eld_connection_type_names[e->conn_type]);

 if (e->spk_alloc) {
  char buf[SND_PRINT_CHANNEL_ALLOCATION_ADVISED_BUFSIZE];
  snd_hdac_print_channel_allocation(e->spk_alloc, buf, sizeof(buf));
  codec_dbg(codec, "HDMI: available speakers:%s\n", buf);
 }

 for (i = 0; i < e->sad_count; i++)
  hdmi_show_short_audio_desc(codec, e->sad + i);
}
