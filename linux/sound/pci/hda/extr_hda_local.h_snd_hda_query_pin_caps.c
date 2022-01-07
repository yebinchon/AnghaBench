
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 int AC_PAR_PIN_CAP ;
 int snd_hda_param_read (struct hda_codec*,int ,int ) ;

__attribute__((used)) static inline u32
snd_hda_query_pin_caps(struct hda_codec *codec, hda_nid_t nid)
{
 return snd_hda_param_read(codec, nid, AC_PAR_PIN_CAP);

}
