
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int subsystem_id; int vendor_id; } ;
struct hda_codec {TYPE_4__ core; TYPE_3__* bus; struct alc_spec* spec; } ;
struct TYPE_11__ {int * hp_pins; int line_outs; int line_out_pins; } ;
struct TYPE_12__ {TYPE_5__ autocfg; } ;
struct TYPE_7__ {unsigned int sku_cfg; scalar_t__ fixup; } ;
struct alc_spec {scalar_t__ init_amp; TYPE_6__ gen; TYPE_1__ cdefine; } ;
typedef int hda_nid_t ;
struct TYPE_9__ {TYPE_2__* pci; } ;
struct TYPE_8__ {unsigned int subsystem_device; } ;


 unsigned int ALC_FIXUP_SKU_IGNORE ;
 scalar_t__ ALC_INIT_DEFAULT ;
 scalar_t__ ALC_INIT_UNDEFINED ;
 int alc_get_hp_pin (struct alc_spec*) ;
 int alc_setup_gpio (struct hda_codec*,int) ;
 int codec_dbg (struct hda_codec*,char*,unsigned int,unsigned int) ;
 scalar_t__ found_in_nid_list (int ,int ,int ) ;
 unsigned int snd_hda_codec_get_pincfg (struct hda_codec*,unsigned int) ;

__attribute__((used)) static int alc_subsystem_id(struct hda_codec *codec, const hda_nid_t *ports)
{
 unsigned int ass, tmp, i;
 unsigned nid;
 struct alc_spec *spec = codec->spec;

 if (spec->cdefine.fixup) {
  ass = spec->cdefine.sku_cfg;
  if (ass == ALC_FIXUP_SKU_IGNORE)
   return 0;
  goto do_sku;
 }

 ass = codec->core.subsystem_id & 0xffff;
 if (codec->bus->pci &&
     ass != codec->bus->pci->subsystem_device && (ass & 1))
  goto do_sku;
 nid = 0x1d;
 if (codec->core.vendor_id == 0x10ec0260)
  nid = 0x17;
 ass = snd_hda_codec_get_pincfg(codec, nid);
 codec_dbg(codec,
    "realtek: No valid SSID, checking pincfg 0x%08x for NID 0x%x\n",
     ass, nid);
 if (!(ass & 1))
  return 0;
 if ((ass >> 30) != 1)
  return 0;


 tmp = 0;
 for (i = 1; i < 16; i++) {
  if ((ass >> i) & 1)
   tmp++;
 }
 if (((ass >> 16) & 0xf) != tmp)
  return 0;
do_sku:
 codec_dbg(codec, "realtek: Enabling init ASM_ID=0x%04x CODEC_ID=%08x\n",
     ass & 0xffff, codec->core.vendor_id);







 tmp = (ass & 0x38) >> 3;
 if (spec->init_amp == ALC_INIT_UNDEFINED) {
  switch (tmp) {
  case 1:
   alc_setup_gpio(codec, 0x01);
   break;
  case 3:
   alc_setup_gpio(codec, 0x02);
   break;
  case 7:
   alc_setup_gpio(codec, 0x03);
   break;
  case 5:
  default:
   spec->init_amp = ALC_INIT_DEFAULT;
   break;
  }
 }




 if (!(ass & 0x8000))
  return 1;







 if (!alc_get_hp_pin(spec)) {
  hda_nid_t nid;
  tmp = (ass >> 11) & 0x3;
  nid = ports[tmp];
  if (found_in_nid_list(nid, spec->gen.autocfg.line_out_pins,
          spec->gen.autocfg.line_outs))
   return 1;
  spec->gen.autocfg.hp_pins[0] = nid;
 }
 return 1;
}
