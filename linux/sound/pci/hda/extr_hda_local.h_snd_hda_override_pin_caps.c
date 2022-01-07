
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int core; } ;
typedef int hda_nid_t ;


 int AC_PAR_PIN_CAP ;
 int snd_hdac_override_parm (int *,int ,int ,unsigned int) ;

__attribute__((used)) static inline int
snd_hda_override_pin_caps(struct hda_codec *codec, hda_nid_t nid,
     unsigned int caps)
{
 return snd_hdac_override_parm(&codec->core, nid, AC_PAR_PIN_CAP, caps);
}
