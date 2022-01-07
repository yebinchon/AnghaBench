
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int subsystem_id; } ;
struct hda_codec {TYPE_1__ core; struct ca0132_spec* spec; } ;
struct ca0132_spec {int quirk; } ;


 int QUIRK_SBZ ;
 int QUIRK_ZXR ;
 int QUIRK_ZXR_DBPRO ;

__attribute__((used)) static void sbz_detect_quirk(struct hda_codec *codec)
{
 struct ca0132_spec *spec = codec->spec;

 switch (codec->core.subsystem_id) {
 case 0x11020033:
  spec->quirk = QUIRK_ZXR;
  break;
 case 0x1102003f:
  spec->quirk = QUIRK_ZXR_DBPRO;
  break;
 default:
  spec->quirk = QUIRK_SBZ;
  break;
 }
}
