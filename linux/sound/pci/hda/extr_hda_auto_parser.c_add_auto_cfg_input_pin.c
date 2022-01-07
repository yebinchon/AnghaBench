
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hda_codec {int dummy; } ;
struct auto_pin_cfg {size_t num_inputs; TYPE_1__* inputs; } ;
typedef int hda_nid_t ;
struct TYPE_2__ {int type; int has_boost_on_pin; int pin; } ;


 size_t AUTO_CFG_MAX_INS ;
 int HDA_INPUT ;
 int nid_has_volume (struct hda_codec*,int ,int ) ;

__attribute__((used)) static void add_auto_cfg_input_pin(struct hda_codec *codec, struct auto_pin_cfg *cfg,
       hda_nid_t nid, int type)
{
 if (cfg->num_inputs < AUTO_CFG_MAX_INS) {
  cfg->inputs[cfg->num_inputs].pin = nid;
  cfg->inputs[cfg->num_inputs].type = type;
  cfg->inputs[cfg->num_inputs].has_boost_on_pin =
   nid_has_volume(codec, nid, HDA_INPUT);
  cfg->num_inputs++;
 }
}
