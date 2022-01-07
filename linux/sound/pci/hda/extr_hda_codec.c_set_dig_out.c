
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int core; scalar_t__ const* slave_dig_outs; } ;
typedef scalar_t__ const hda_nid_t ;


 int AC_VERB_SET_DIGI_CONVERT_1 ;
 int snd_hdac_regmap_update (int *,scalar_t__ const,int ,int,int) ;

__attribute__((used)) static void set_dig_out(struct hda_codec *codec, hda_nid_t nid,
   int mask, int val)
{
 const hda_nid_t *d;

 snd_hdac_regmap_update(&codec->core, nid, AC_VERB_SET_DIGI_CONVERT_1,
          mask, val);
 d = codec->slave_dig_outs;
 if (!d)
  return;
 for (; *d; d++)
  snd_hdac_regmap_update(&codec->core, *d,
           AC_VERB_SET_DIGI_CONVERT_1, mask, val);
}
