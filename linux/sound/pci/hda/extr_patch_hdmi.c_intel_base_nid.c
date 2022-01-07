
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vendor_id; } ;
struct hda_codec {TYPE_1__ core; } ;



__attribute__((used)) static int intel_base_nid(struct hda_codec *codec)
{
 switch (codec->core.vendor_id) {
 case 0x80860054:
 case 0x80862804:
 case 0x80862882:
  return 4;
 default:
  return 5;
 }
}
