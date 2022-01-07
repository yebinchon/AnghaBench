
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct auto_pin_cfg {int line_outs; } ;
struct hda_gen_spec {int multi_ios; TYPE_1__* multi_io; int * private_dac_nids; struct auto_pin_cfg autocfg; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;
typedef int hda_nid_t ;
struct TYPE_2__ {int dac; } ;



__attribute__((used)) static hda_nid_t get_primary_out(struct hda_codec *codec, int idx)
{
 struct hda_gen_spec *spec = codec->spec;
 struct auto_pin_cfg *cfg = &spec->autocfg;

 if (cfg->line_outs > idx)
  return spec->private_dac_nids[idx];
 idx -= cfg->line_outs;
 if (spec->multi_ios > idx)
  return spec->multi_io[idx].dac;
 return 0;
}
