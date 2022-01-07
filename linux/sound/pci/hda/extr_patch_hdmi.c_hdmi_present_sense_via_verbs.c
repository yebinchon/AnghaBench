
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hdmi_spec_per_pin {int lock; int work; int pin_nid; struct hda_codec* codec; } ;
struct TYPE_2__ {scalar_t__ (* pin_get_eld ) (struct hda_codec*,int ,int ,int *) ;} ;
struct hdmi_eld {int monitor_present; int eld_valid; int eld_size; int eld_buffer; int info; } ;
struct hdmi_spec {TYPE_1__ ops; struct hdmi_eld temp_eld; } ;
struct hda_jack_tbl {int block_report; int pin_sense; } ;
struct hda_codec {int addr; struct hdmi_spec* spec; } ;
typedef int hda_nid_t ;


 int AC_PINSENSE_ELDV ;
 int AC_PINSENSE_PRESENCE ;
 int codec_dbg (struct hda_codec*,char*,int ,int ,int,int) ;
 int msecs_to_jiffies (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int schedule_delayed_work (int *,int ) ;
 struct hda_jack_tbl* snd_hda_jack_tbl_get (struct hda_codec*,int ) ;
 int snd_hda_pin_sense (struct hda_codec*,int ) ;
 scalar_t__ snd_hdmi_parse_eld (struct hda_codec*,int *,int ,int ) ;
 scalar_t__ stub1 (struct hda_codec*,int ,int ,int *) ;
 int update_eld (struct hda_codec*,struct hdmi_spec_per_pin*,struct hdmi_eld*) ;

__attribute__((used)) static bool hdmi_present_sense_via_verbs(struct hdmi_spec_per_pin *per_pin,
      int repoll)
{
 struct hda_jack_tbl *jack;
 struct hda_codec *codec = per_pin->codec;
 struct hdmi_spec *spec = codec->spec;
 struct hdmi_eld *eld = &spec->temp_eld;
 hda_nid_t pin_nid = per_pin->pin_nid;
 int present;
 bool ret;
 bool do_repoll = 0;

 present = snd_hda_pin_sense(codec, pin_nid);

 mutex_lock(&per_pin->lock);
 eld->monitor_present = !!(present & AC_PINSENSE_PRESENCE);
 if (eld->monitor_present)
  eld->eld_valid = !!(present & AC_PINSENSE_ELDV);
 else
  eld->eld_valid = 0;

 codec_dbg(codec,
  "HDMI status: Codec=%d Pin=%d Presence_Detect=%d ELD_Valid=%d\n",
  codec->addr, pin_nid, eld->monitor_present, eld->eld_valid);

 if (eld->eld_valid) {
  if (spec->ops.pin_get_eld(codec, pin_nid, eld->eld_buffer,
           &eld->eld_size) < 0)
   eld->eld_valid = 0;
  else {
   if (snd_hdmi_parse_eld(codec, &eld->info, eld->eld_buffer,
          eld->eld_size) < 0)
    eld->eld_valid = 0;
  }
  if (!eld->eld_valid && repoll)
   do_repoll = 1;
 }

 if (do_repoll)
  schedule_delayed_work(&per_pin->work, msecs_to_jiffies(300));
 else
  update_eld(codec, per_pin, eld);

 ret = !repoll || !eld->monitor_present || eld->eld_valid;

 jack = snd_hda_jack_tbl_get(codec, pin_nid);
 if (jack) {
  jack->block_report = !ret;
  jack->pin_sense = (eld->monitor_present && eld->eld_valid) ?
   AC_PINSENSE_PRESENCE : 0;
 }
 mutex_unlock(&per_pin->lock);
 return ret;
}
