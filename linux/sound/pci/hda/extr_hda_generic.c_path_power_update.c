
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nid_path {int depth; scalar_t__* path; } ;
struct TYPE_2__ {scalar_t__ afg; } ;
struct hda_codec {TYPE_1__ core; } ;
typedef scalar_t__ hda_nid_t ;


 int AC_PWRST_D0 ;
 int AC_PWRST_D3 ;
 int AC_VERB_GET_POWER_STATE ;
 int AC_VERB_SET_POWER_STATE ;
 int AC_WCAP_POWER ;
 int get_wcaps (struct hda_codec*,scalar_t__) ;
 scalar_t__ is_active_nid_for_any (struct hda_codec*,scalar_t__) ;
 int snd_hda_codec_read (struct hda_codec*,scalar_t__,int ,int ,int ) ;
 int snd_hda_codec_write (struct hda_codec*,scalar_t__,int ,int ,int) ;
 int snd_hdac_regmap_sync_node (TYPE_1__*,scalar_t__) ;

__attribute__((used)) static hda_nid_t path_power_update(struct hda_codec *codec,
       struct nid_path *path,
       bool allow_powerdown)
{
 hda_nid_t nid, changed = 0;
 int i, state, power;

 for (i = 0; i < path->depth; i++) {
  nid = path->path[i];
  if (!(get_wcaps(codec, nid) & AC_WCAP_POWER))
   continue;
  if (nid == codec->core.afg)
   continue;
  if (!allow_powerdown || is_active_nid_for_any(codec, nid))
   state = AC_PWRST_D0;
  else
   state = AC_PWRST_D3;
  power = snd_hda_codec_read(codec, nid, 0,
        AC_VERB_GET_POWER_STATE, 0);
  if (power != (state | (state << 4))) {
   snd_hda_codec_write(codec, nid, 0,
         AC_VERB_SET_POWER_STATE, state);
   changed = nid;
  }
 }
 return changed;
}
