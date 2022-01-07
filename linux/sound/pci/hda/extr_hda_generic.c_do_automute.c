
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nid_path {int * ctls; } ;
struct hda_gen_spec {unsigned long long mute_bits; scalar_t__ keep_vref_in_automute; scalar_t__ auto_mute_via_amp; } ;
struct hda_codec {scalar_t__ power_save_node; struct hda_gen_spec* spec; } ;
typedef unsigned long long hda_nid_t ;


 size_t NID_PATH_MUTE_CTL ;
 unsigned int PIN_HP ;
 unsigned int PIN_IN ;
 int detect_pin_state (struct hda_codec*,unsigned long long) ;
 unsigned long long get_amp_nid_ (int ) ;
 int set_path_power (struct hda_codec*,unsigned long long,int,int) ;
 int set_pin_eapd (struct hda_codec*,unsigned long long,int) ;
 unsigned int snd_hda_codec_get_pin_target (struct hda_codec*,unsigned long long) ;
 struct nid_path* snd_hda_get_path_from_idx (struct hda_codec*,int) ;
 int update_pin_ctl (struct hda_codec*,unsigned long long,unsigned int) ;

__attribute__((used)) static void do_automute(struct hda_codec *codec, int num_pins, hda_nid_t *pins,
   int *paths, bool mute)
{
 struct hda_gen_spec *spec = codec->spec;
 int i;

 for (i = 0; i < num_pins; i++) {
  hda_nid_t nid = pins[i];
  unsigned int val, oldval;
  if (!nid)
   break;

  oldval = snd_hda_codec_get_pin_target(codec, nid);
  if (oldval & PIN_IN)
   continue;

  if (spec->auto_mute_via_amp) {
   struct nid_path *path;
   hda_nid_t mute_nid;

   path = snd_hda_get_path_from_idx(codec, paths[i]);
   if (!path)
    continue;
   mute_nid = get_amp_nid_(path->ctls[NID_PATH_MUTE_CTL]);
   if (!mute_nid)
    continue;
   if (mute)
    spec->mute_bits |= (1ULL << mute_nid);
   else
    spec->mute_bits &= ~(1ULL << mute_nid);
   continue;
  } else {



   if (spec->keep_vref_in_automute)
    val = oldval & ~PIN_HP;
   else
    val = 0;
   if (!mute)
    val |= oldval;





   update_pin_ctl(codec, nid, val);
  }

  set_pin_eapd(codec, nid, !mute);
  if (codec->power_save_node) {
   bool on = !mute;
   if (on)
    on = detect_pin_state(codec, nid);
   set_path_power(codec, nid, on, -1);
  }
 }
}
